require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get '/auth/500px'
    assert_response :redirect
  end
end
