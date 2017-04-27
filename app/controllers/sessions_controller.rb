class SessionsController < ApplicationController
  def new
  end

  def create
    log_in params[:oauth_token]
    redirect_to root_url # Not the final implementation!
  end
end
