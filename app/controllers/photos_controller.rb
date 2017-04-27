class PhotosController < ApplicationController
  def index
    res = F00px.get('/v1/photos?feature=popular&sort=created_at&rpp=100&image_size=3')
    decoded_res = ActiveSupport::JSON.decode(res.body)
    @photos_hash = decoded_res["photos"]
  end

end
