# frozen_string_literal: true

require 'minitest/autorun'
require 'liquid'

# Tests the real Liquid include the site renders with (_includes/embedded_resource.html),
# not the parallel Ruby implementation in lib/talk_renderer.rb. A talk page's slides and
# video embeds come from this file, so URL-shape handling has to be asserted against it.
class EmbeddedResourceIncludeTest < Minitest::Test
  INCLUDE_PATH = File.expand_path('../../../_includes/embedded_resource.html', __dir__)

  # relative_url is a Jekyll filter, unavailable outside a Jekyll build.
  module JekyllFilterStubs
    def relative_url(input)
      input.to_s
    end
  end
  Liquid::Template.register_filter(JekyllFilterStubs)

  def setup
    @template = Liquid::Template.parse(File.read(INCLUDE_PATH))
  end

  def render(url, type: 'video', **extra)
    html = @template.render({ 'include' => { 'url' => url, 'type' => type }.merge(extra) })
    assert_empty @template.errors, "Liquid errors while rendering #{url}"
    html
  end

  def test_vimeo_url_renders_player_embed
    html = render('https://vimeo.com/1223667266')

    assert_includes html, 'video-embed', 'Should include video-embed class'
    assert_includes html, 'responsive-iframe', 'Should include responsive-iframe class'
    assert_includes html, 'https://player.vimeo.com/video/1223667266',
                    'Should convert to the Vimeo player embed URL'
    assert_includes html, 'allowfullscreen', 'Should have allowfullscreen attribute'
    refute_includes html, 'resource-fallback', 'Should embed rather than fall back to a link'
  end

  def test_vimeo_url_share_parameters_are_stripped
    html = render('https://vimeo.com/1223667266?fl=pl&fe=sh')

    assert_includes html, 'src="https://player.vimeo.com/video/1223667266"',
                    'Share tracking parameters should not leak into the embed URL'
  end

  def test_unlisted_vimeo_url_keeps_privacy_hash
    html = render('https://vimeo.com/1223667266/9f3c1ab2de')

    assert_includes html, 'src="https://player.vimeo.com/video/1223667266?h=9f3c1ab2de"',
                    'Unlisted videos need the privacy hash passed to the player'
  end

  def test_vimeo_player_url_renders_embed
    html = render('https://player.vimeo.com/video/1223667266')

    assert_includes html, 'src="https://player.vimeo.com/video/1223667266"'
  end

  def test_vimeo_channel_url_finds_video_id
    html = render('https://vimeo.com/channels/staffpicks/1223667266')

    assert_includes html, 'src="https://player.vimeo.com/video/1223667266"',
                    'Non-numeric path segments should not be mistaken for the video ID'
  end

  def test_youtube_url_still_renders_youtube_embed
    html = render('https://youtu.be/NKh_kEa3w8w')

    assert_includes html, 'https://www.youtube.com/embed/NKh_kEa3w8w'
    refute_includes html, 'player.vimeo.com', 'YouTube URLs must not hit the Vimeo branch'
  end

  def test_google_drive_url_still_renders_pdf_embed
    html = render('https://drive.google.com/file/d/1M0JDvLyqiVkRDN7dk5ENjWsJDaAfXFWe/preview',
                  type: 'slides')

    assert_includes html, 'pdf-embed'
    refute_includes html, 'player.vimeo.com', 'Drive URLs must not hit the Vimeo branch'
  end

  def test_unknown_host_falls_back_to_link
    html = render('https://example.com/talk')

    assert_includes html, 'resource-fallback'
    refute_includes html, '<iframe'
  end
end
