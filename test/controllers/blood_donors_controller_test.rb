require 'test_helper'

class BloodDonorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blood_donor = blood_donors(:one)
  end

  test "should get index" do
    get blood_donors_url
    assert_response :success
  end

  test "should get new" do
    get new_blood_donor_url
    assert_response :success
  end

  test "should create blood_donor" do
    assert_difference('BloodDonor.count') do
      post blood_donors_url, params: { blood_donor: { address: @blood_donor.address, blood_type: @blood_donor.blood_type, name: @blood_donor.name, phone_number: @blood_donor.phone_number } }
    end

    assert_redirected_to blood_donor_url(BloodDonor.last)
  end

  test "should show blood_donor" do
    get blood_donor_url(@blood_donor)
    assert_response :success
  end

  test "should get edit" do
    get edit_blood_donor_url(@blood_donor)
    assert_response :success
  end

  test "should update blood_donor" do
    patch blood_donor_url(@blood_donor), params: { blood_donor: { address: @blood_donor.address, blood_type: @blood_donor.blood_type, name: @blood_donor.name, phone_number: @blood_donor.phone_number } }
    assert_redirected_to blood_donor_url(@blood_donor)
  end

  test "should destroy blood_donor" do
    assert_difference('BloodDonor.count', -1) do
      delete blood_donor_url(@blood_donor)
    end

    assert_redirected_to blood_donors_url
  end
end
