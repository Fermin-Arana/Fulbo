require "test_helper"

class CourtControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get court_index_url
    assert_response :success
  end

  test "should get show" do
    get court_show_url
    assert_response :success
  end

  test "should get new" do
    get court_new_url
    assert_response :success
  end

  test "should get create" do
    get court_create_url
    assert_response :success
  end
end
