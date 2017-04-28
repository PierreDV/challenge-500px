require 'test_helper'

class PhotosControllerTest < ActionDispatch::IntegrationTest
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
