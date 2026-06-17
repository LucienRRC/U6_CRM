require "test_helper"

class CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get alphabetized" do
    get alphabetized_customers_url
    assert_response :success
  end
end
