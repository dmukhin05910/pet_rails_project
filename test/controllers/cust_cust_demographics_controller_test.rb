require "test_helper"

class CustCustDemographicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cust_cust_demographic = cust_cust_demographics(:one)
  end

  test "should get index" do
    get cust_cust_demographics_url
    assert_response :success
  end

  test "should get new" do
    get new_cust_cust_demographic_url
    assert_response :success
  end

  test "should create cust_cust_demographic" do
    assert_difference('CustCustDemographic.count') do
      post cust_cust_demographics_url, params: { cust_cust_demographic: {  } }
    end

    assert_redirected_to cust_cust_demographic_url(CustCustDemographic.last)
  end

  test "should show cust_cust_demographic" do
    get cust_cust_demographic_url(@cust_cust_demographic)
    assert_response :success
  end

  test "should get edit" do
    get edit_cust_cust_demographic_url(@cust_cust_demographic)
    assert_response :success
  end

  test "should update cust_cust_demographic" do
    patch cust_cust_demographic_url(@cust_cust_demographic), params: { cust_cust_demographic: {  } }
    assert_redirected_to cust_cust_demographic_url(@cust_cust_demographic)
  end

  test "should destroy cust_cust_demographic" do
    assert_difference('CustCustDemographic.count', -1) do
      delete cust_cust_demographic_url(@cust_cust_demographic)
    end

    assert_redirected_to cust_cust_demographics_url
  end
end
