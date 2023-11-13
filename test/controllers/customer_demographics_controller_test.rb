require "test_helper"

class CustomerDemographicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_demographic = customer_demographics(:one)
  end

  test "should get index" do
    get customer_demographics_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_demographic_url
    assert_response :success
  end

  test "should create customer_demographic" do
    assert_difference('CustomerDemographic.count') do
      post customer_demographics_url, params: { customer_demographic: {  } }
    end

    assert_redirected_to customer_demographic_url(CustomerDemographic.last)
  end

  test "should show customer_demographic" do
    get customer_demographic_url(@customer_demographic)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_demographic_url(@customer_demographic)
    assert_response :success
  end

  test "should update customer_demographic" do
    patch customer_demographic_url(@customer_demographic), params: { customer_demographic: {  } }
    assert_redirected_to customer_demographic_url(@customer_demographic)
  end

  test "should destroy customer_demographic" do
    assert_difference('CustomerDemographic.count', -1) do
      delete customer_demographic_url(@customer_demographic)
    end

    assert_redirected_to customer_demographics_url
  end
end
