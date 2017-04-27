class PhotosController < ApplicationController
  def index
    # This code makes a JSON request to the 500px API and parses the 'photos' key and values into a hash.
    # The hash is saved as an instance variable so it will work with the view's ERB.
    res = F00px.get('/v1/photos?feature=popular&sort=created_at&rpp=100&image_size=3')
    @photos_hash = ActiveSupport::JSON.decode(res.body)["photos"]
  end
end
