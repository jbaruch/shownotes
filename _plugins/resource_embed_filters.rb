# frozen_string_literal: true

require 'liquid'
require 'uri'

module ResourceEmbedFilters
  # Native PDF viewers use the site's existing frame-src 'self' permission.
  # Keep external PDFs as links instead of silently loading a frame CSP blocks.
  def pdf_resource(url, site_url)
    uri = URI.parse(url.to_s)
    return unless uri.path&.downcase&.end_with?('.pdf')

    if uri.scheme.nil? && uri.host.nil?
      return unless uri.path.start_with?('/') && !url.to_s.start_with?('//')

      local = true
    else
      return unless resource_uri(url)

      site = resource_uri(site_url)
      local = site && [uri.scheme, uri.host.downcase, uri.port] == [site.scheme, site.host.downcase, site.port]
    end
    { 'url' => url, 'local' => !!local }
  rescue URI::InvalidURIError
    nil
  end

  # Share links use t (seconds or h/m/s); the iframe player requires start in seconds.
  def youtube_resource(url)
    uri = resource_uri(url)
    return unless uri

    params = URI.decode_www_form(uri.query.to_s).to_h
    video_id = case uri.host.downcase
               when 'youtu.be', 'www.youtu.be'
                 uri.path.delete_prefix('/').split('/').first
               when 'youtube.com', 'www.youtube.com', 'm.youtube.com'
                 if uri.path == '/watch'
                   params['v']
                 else
                   uri.path.match(%r{\A/(?:live|shorts|embed)/([\w-]+)\z})&.[](1)
                 end
               end
    return unless video_id&.match?(/\A[A-Za-z0-9_-]{11}\z/)

    fragment_params = URI.decode_www_form(uri.fragment.to_s).to_h
    timestamp = params['start'] || params['t'] || fragment_params['t']
    start = youtube_start_seconds(timestamp)
    embed_url = "https://www.youtube.com/embed/#{video_id}"
    embed_url += "?start=#{start}" unless start.nil?
    { 'video_id' => video_id, 'embed_url' => embed_url }
  rescue ArgumentError
    nil
  end

  def notist_embed_url(url)
    uri = resource_uri(url)
    return unless uri && %w[noti.st www.noti.st speaking.gamov.io].include?(uri.host.downcase)

    # Custom domains identify the presenter; canonical Notist embeds need username/ID.
    segments = uri.path.split('/').drop(1)
    if uri.host.downcase == 'speaking.gamov.io'
      base_url = 'https://speaking.gamov.io'
      presentation_id = segments[0]
    else
      username, presentation_id = segments
      return unless username&.match?(/\A[A-Za-z0-9_-]+\z/)

      base_url = "https://noti.st/#{username}"
    end
    return unless presentation_id&.match?(/\A[A-Za-z0-9]{6}\z/)

    "#{base_url}/#{presentation_id}/embed"
  end

  private

  def resource_uri(url)
    uri = URI.parse(url.to_s)
    uri if %w[http https].include?(uri.scheme) && uri.host && !uri.userinfo
  rescue URI::InvalidURIError
    nil
  end

  def youtube_start_seconds(timestamp)
    value = timestamp.to_s
    return value.to_i if value.match?(/\A\d+\z/)

    parts = value.match(/\A(?:(\d+)h)?(?:(\d+)m)?(?:(\d+)s)?\z/)
    return unless parts && !value.empty?

    parts[1].to_i * 3600 + parts[2].to_i * 60 + parts[3].to_i
  end
end

Liquid::Template.register_filter(ResourceEmbedFilters)
