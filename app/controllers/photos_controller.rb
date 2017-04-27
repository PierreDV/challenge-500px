class PhotosController < ApplicationController
  
  # This code makes a JSON request to the 500px API and parses the 'photos' key and values into a hash.
  # The hash is saved as an instance variable so it will work with the view's ERB.
  def index
    res = F00px.get('/v1/photos?feature=popular&sort=rating&rpp=100&image_size=3')
    @photos_hash = ActiveSupport::JSON.decode(res.body)["photos"]

    # user = client.get("/v1/users/#{session[:user_credentials]["user_id"]}")
  end

  # This code send a POST request to the 500px API liking the chosen photo.
  def like
    client = F00px::Client.new
    client.token = session[:user_credentials]["token"]
    client.token_secret = session[:user_credentials]["secret"]
    res = client.post("/v1/photos/#{params[:photo_id]}/vote?vote=1")
  end
end
