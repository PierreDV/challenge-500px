module SessionsHelper
  # Sets @current_user to session's :user_token, and sets to nil if session value doesn't exist.
  def current_user
    @current_user ||= session[:user_token]
  end

  # Returns true the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Delete's 500px token saved in session and logs out user.
  def log_out
    session.delete(:user_token)
    @current_user = nil
  end
end
