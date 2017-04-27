class SessionsController < ApplicationController
  def new
  end

  def create
    omniauth = request.env["omniauth.auth"]
    session[:user_token] = omniauth["credentials"]["token"] if omniauth['provider'] == '500px'
    redirect_to root_url # Not the final implementation!
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
