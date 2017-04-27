class SessionsController < ApplicationController
  def new
  end

  def create
    omniauth = request.env["omniauth.auth"]
    session[:user_credentials] = {user_id: omniauth["uid"], token: omniauth["credentials"]["token"], secret: omniauth["credentials"]["secret"]}
    redirect_to root_url # Not the final implementation!
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
