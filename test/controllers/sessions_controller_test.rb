require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  # This test ensures a proper redirect is occuring. Would be nice to develope this test more.
  test "should get new" do
    get '/auth/500px'
    assert_response :redirect
  end
end
