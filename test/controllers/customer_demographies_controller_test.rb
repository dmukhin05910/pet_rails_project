require "test_helper"

class CustomerDemographiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_demography = customer_demographies(:one)
  end

  test "should get index" do
    get customer_demographies_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_demography_url
    assert_response :success
  end

  test "should create customer_demography" do
    assert_difference('CustomerDemography.count') do
      post customer_demographies_url, params: { customer_demography: {  } }
    end

    assert_redirected_to customer_demography_url(CustomerDemography.last)
  end

  test "should show customer_demography" do
    get customer_demography_url(@customer_demography)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_demography_url(@customer_demography)
    assert_response :success
  end

  test "should update customer_demography" do
    patch customer_demography_url(@customer_demography), params: { customer_demography: {  } }
    assert_redirected_to customer_demography_url(@customer_demography)
  end

  test "should destroy customer_demography" do
    assert_difference('CustomerDemography.count', -1) do
      delete customer_demography_url(@customer_demography)
    end

    assert_redirected_to customer_demographies_url
  end
end
