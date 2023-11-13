require "test_helper"

class CustCustDemographiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cust_cust_demography = cust_cust_demographies(:one)
  end

  test "should get index" do
    get cust_cust_demographies_url
    assert_response :success
  end

  test "should get new" do
    get new_cust_cust_demography_url
    assert_response :success
  end

  test "should create cust_cust_demography" do
    assert_difference('CustCustDemography.count') do
      post cust_cust_demographies_url, params: { cust_cust_demography: {  } }
    end

    assert_redirected_to cust_cust_demography_url(CustCustDemography.last)
  end

  test "should show cust_cust_demography" do
    get cust_cust_demography_url(@cust_cust_demography)
    assert_response :success
  end

  test "should get edit" do
    get edit_cust_cust_demography_url(@cust_cust_demography)
    assert_response :success
  end

  test "should update cust_cust_demography" do
    patch cust_cust_demography_url(@cust_cust_demography), params: { cust_cust_demography: {  } }
    assert_redirected_to cust_cust_demography_url(@cust_cust_demography)
  end

  test "should destroy cust_cust_demography" do
    assert_difference('CustCustDemography.count', -1) do
      delete cust_cust_demography_url(@cust_cust_demography)
    end

    assert_redirected_to cust_cust_demographies_url
  end
end
