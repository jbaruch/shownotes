# frozen_string_literal: true

require 'minitest/autorun'
require 'liquid'
require_relative '../../../_plugins/resource_embed_filters'

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
    html = @template.render({ 'include' => { 'url' => url, 'type' => type }.merge(extra.transform_keys(&:to_s)) })
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

  def test_youtube_live_share_link_preserves_the_talk_start
    html = render('https://www.youtube.com/live/fi_mGfiBs4M?si=HaMRXepgQh-RT9C2&t=14345')

    assert_includes html, 'src="https://www.youtube.com/embed/fi_mGfiBs4M?start=14345"'
    refute_includes html, 'resource-fallback'
    refute_includes html, 'HaMRXepgQh-RT9C2'
  end

  def test_youtube_timestamp_formats_and_url_shapes
    urls = [
      'https://www.youtube.com/watch?v=fi_mGfiBs4M&t=14345',
      'https://www.youtube.com/watch?t=14345&v=fi_mGfiBs4M',
      'https://m.youtube.com/watch?v=fi_mGfiBs4M&t=14345s',
      'https://youtu.be/fi_mGfiBs4M?t=3h59m5s',
      'https://www.youtube.com/shorts/fi_mGfiBs4M?start=14345',
      'https://www.youtube.com/embed/fi_mGfiBs4M?start=14345',
      'https://youtu.be/fi_mGfiBs4M#t=3h59m5s'
    ]

    urls.each do |url|
      assert_includes render(url), 'src="https://www.youtube.com/embed/fi_mGfiBs4M?start=14345"', url
    end
  end

  def test_youtube_explicit_start_takes_precedence_and_zero_is_valid
    html = render('https://youtu.be/fi_mGfiBs4M?t=14345&start=0')

    assert_includes html, 'src="https://www.youtube.com/embed/fi_mGfiBs4M?start=0"'
  end

  def test_invalid_youtube_timestamps_are_not_added_to_the_player
    %w[-1 1.5 12oops 1m2h].each do |timestamp|
      html = render("https://youtu.be/fi_mGfiBs4M?t=#{timestamp}")
      assert_includes html, 'src="https://www.youtube.com/embed/fi_mGfiBs4M"'
    end
  end

  def test_youtube_preview_uses_the_clean_video_id
    html = render('https://youtu.be/fi_mGfiBs4M?t=14345', preview_mode: true)

    assert_includes html, 'https://img.youtube.com/vi/fi_mGfiBs4M/maxresdefault.jpg'
    refute_includes html, '<iframe'
  end

  def test_youtube_host_lookalikes_and_invalid_ids_do_not_embed
    [
      'https://example.com/youtube.com/watch?v=fi_mGfiBs4M',
      'https://youtube.com.example.com/watch?v=fi_mGfiBs4M',
      'https://youtu.be/invalid',
      'https://www.youtube.com/live/fi_mGfiBs4M%22'
    ].each do |url|
      refute_includes render(url), '<iframe'
    end
  end

  def test_notist_custom_domain_slides_embed
    html = render('https://speaking.gamov.io/sUTmZl/codepocalypse-now-langchain4j-vs-koog', type: 'slides')

    assert_includes html, 'src="https://speaking.gamov.io/sUTmZl/embed"'
    assert_includes html, 'slides-embed'
    refute_includes html, 'resource-fallback'
  end

  def test_notist_canonical_url_ignores_share_parameters_and_fragment
    html = render('https://noti.st/vikgamov/sUTmZl/codepocalypse-now?share=true#slide-3', type: 'slides')

    assert_includes html, 'src="https://noti.st/vikgamov/sUTmZl/embed"'
  end

  def test_notist_preview_uses_the_local_talk_thumbnail
    html = render('https://speaking.gamov.io/sUTmZl/codepocalypse-now-langchain4j-vs-koog',
                  type: 'slides', preview_mode: true,
                  talk: { 'path' => '_talks/ideaconf-2026-codepocalypse.md' },
                  talk_url: '/talks/ideaconf-2026-codepocalypse/')

    assert_includes html, 'src="/assets/images/thumbnails/ideaconf-2026-codepocalypse-thumbnail.png"'
    assert_includes html, 'href="/talks/ideaconf-2026-codepocalypse/"'
    refute_includes html, '<iframe'
  end

  def test_notist_invalid_ids_and_unknown_custom_domains_fall_back
    %w[https://noti.st/ https://noti.st/sUTmZl https://noti.st/vikgamov/invalid-id https://example.com/sUTmZl].each do |url|
      refute_includes render(url, type: 'slides'), '<iframe'
    end
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
