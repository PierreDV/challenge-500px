require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # This test verifies that the correct links were added to the layout view.
  test "layout links" do
    get root_path
    assert_template 'photos/index'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", login_path
  end
end
