module SessionsHelper
  # Sets oauth token as session variable.
  def log_in(user_token)
    session[:user_token] = user_token
  end

  # Sets @current_user variable if one is not already set.
  def current_user
    @current_user ||= session[:user_token]
  end
  # Returns true the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
end
