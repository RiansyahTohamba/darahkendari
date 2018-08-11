require "application_system_test_case"

class BloodDonorsTest < ApplicationSystemTestCase
  setup do
    @blood_donor = blood_donors(:one)
  end

  test "visiting the index" do
    visit blood_donors_url
    assert_selector "h1", text: "Blood Donors"
  end

  test "creating a Blood donor" do
    visit blood_donors_url
    click_on "New Blood Donor"

    fill_in "Address", with: @blood_donor.address
    fill_in "Blood Type", with: @blood_donor.blood_type
    fill_in "Name", with: @blood_donor.name
    fill_in "Phone Number", with: @blood_donor.phone_number
    click_on "Create Blood donor"

    assert_text "Blood donor was successfully created"
    click_on "Back"
  end

  test "updating a Blood donor" do
    visit blood_donors_url
    click_on "Edit", match: :first

    fill_in "Address", with: @blood_donor.address
    fill_in "Blood Type", with: @blood_donor.blood_type
    fill_in "Name", with: @blood_donor.name
    fill_in "Phone Number", with: @blood_donor.phone_number
    click_on "Update Blood donor"

    assert_text "Blood donor was successfully updated"
    click_on "Back"
  end

  test "destroying a Blood donor" do
    visit blood_donors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blood donor was successfully destroyed"
  end
end
