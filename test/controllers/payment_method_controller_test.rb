require "test_helper"

class PaymentMethodControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get payment_method_index_url
    assert_response :success
  end

  test "should get show" do
    get payment_method_show_url
    assert_response :success
  end

  test "should get new" do
    get payment_method_new_url
    assert_response :success
  end

  test "should get create" do
    get payment_method_create_url
    assert_response :success
  end
end
