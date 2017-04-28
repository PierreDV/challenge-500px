module PhotosHelper
  def photo_liked?(photo_id)
    votes = F00px.get("/v1/photos/#{photo_id}/votes")
    photo_id == session[:user_credentials][:user_id]
    users = ActiveSupport::JSON.decode(votes.body)["users"]
    users.any? { |user| user["id"] == session[:user_credentials]["user_id"] }
  end
end
