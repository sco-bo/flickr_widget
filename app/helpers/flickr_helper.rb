
module FlickrHelper
  def user_photos(user_id, photo_count = 12)
    FlickRaw.api_key = ENV['API_KEY']
    FlickRaw.shared_secret = ENV['SHARED_SECRET']
    flickr.access_token = ENV['ACCESS_TOKEN']
    flickr.access_secret = ENV['ACCESS_SECRET']
    login = flickr.test.login
    flickr.photos.search(user_id: user_id)
  end

  def render_flickr_sidebar_widget(user_id, photo_count = 12, columns = 2)
    begin 
      photos = user_photos(user_id, photo_count)
      render :partial => '/flickr/sidebar_widget', :locals => {:photos => photos}
    rescue Exception
      render :partial => '/flickr/unavailable'
    end
  end
end