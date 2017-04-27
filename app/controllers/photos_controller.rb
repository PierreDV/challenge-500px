class PhotosController < ApplicationController
  def index
    res = F00px.get('/v1/photos?feature=popular&sort=created_at&rpp=100&image_size=3')
    @photos_hash = ActiveSupport::JSON.decode(res.body)["photos"]
  end
end
