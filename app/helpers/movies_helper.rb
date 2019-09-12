module MoviesHelper
  def display_video(url)
    url_id = YouTubeRails.extract_video_id(url) || url
    "https://www.youtube.com/embed/#{url_id}"
  end
end
