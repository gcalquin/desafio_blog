require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get index_dashboard_url
    assert_response :success
  end

  test "should get create" do
    get index_create_url
    assert_response :success
  end

end
