require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  test "login" do
    get login_path
  end
end
