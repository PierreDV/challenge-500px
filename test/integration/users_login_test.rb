require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  test "Omniauth callback creates session and redirects to homepage" do
    ENV['omniauth.auth'] = OmniAuth.config.mock_auth["500px"]
    get '/auth/500px/callback'
    assert_redirected_to root_path
  end
end
