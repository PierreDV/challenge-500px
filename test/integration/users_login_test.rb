require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  test "Omniauth callback creates session and redirects to homepage" do
    # We first make sure that 'like' buttons are not rendering
    # on the homepage if they are not not logged in.
    btn_class = "btn btn-info btn-xs col-xs-offset-5 col-md-offset-5 like"
    get root_path
    assert_select "a[class=?]", btn_class, count: 0

    # We stub Omniauth's response for valid authentication, then test
    # to ensure succsefull login is creating the [:users_credentials] session,
    # and redirecting the user to the root path, we ensure the Photo's 'index'
    # view is rendered, and finally ensure the 'like' buttons are being rendered.
    ENV['omniauth.auth'] = OmniAuth.config.mock_auth["500px"]
    get '/auth/500px/callback'
    assert session[:user_credentials]
    assert_redirected_to root_path
    follow_redirect!
    assert_template 'photos/index'
    assert_select "a[class=?]", btn_class, count: 100
  end
end
