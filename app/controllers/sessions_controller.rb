class SessionsController < ApplicationController
  # This action is called by 500px's OmniAuth callback URL. It stores user credentials as a session variable.
  def create
    omniauth = request.env["omniauth.auth"]
    session[:user_credentials] = {
      user_id: omniauth["uid"],
      token: omniauth["credentials"]["token"],
      secret: omniauth["credentials"]["secret"] }
    redirect_to root_url # Not the final implementation!
  end

  # Calls the Sessions Helper's 'log_out' method. Destroying the session,
  # setting @current_user to nil and redirecting user back home.
  def destroy
    log_out
    redirect_to root_url
  end
end
