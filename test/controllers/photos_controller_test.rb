require 'test_helper'

class PhotosControllerTest < ActionDispatch::IntegrationTest
  # These tests assert that these routes are retruning 200 status codes
  # They also assert that the correct title tags are being rendered
  test "should get index" do
    get photos_path
    assert_response :success
    assert_select "title", "100 Most Popular | 500px Challenge"
  end

  test "should get request error" do
    get request_error_path
    assert_response :success
    assert_select "title", "Request Error | 500px Challenge"
  end
end
