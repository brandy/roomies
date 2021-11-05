require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Age", with: @profile.age
    fill_in "Budget", with: @profile.budget
    fill_in "Children", with: @profile.children
    fill_in "Description", with: @profile.description
    fill_in "Gender", with: @profile.gender
    check "Is cannabis" if @profile.is_cannabis
    check "Is cat" if @profile.is_cat
    check "Is dog" if @profile.is_dog
    check "Is lgbt" if @profile.is_lgbt
    check "Is non smoker" if @profile.is_non_smoker
    check "Is student" if @profile.is_student
    fill_in "Looking for", with: @profile.looking_for
    fill_in "Move in date", with: @profile.move_in_date
    fill_in "Occupation", with: @profile.occupation
    fill_in "Stay length", with: @profile.stay_length
    fill_in "User", with: @profile.user_id
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Age", with: @profile.age
    fill_in "Budget", with: @profile.budget
    fill_in "Children", with: @profile.children
    fill_in "Description", with: @profile.description
    fill_in "Gender", with: @profile.gender
    check "Is cannabis" if @profile.is_cannabis
    check "Is cat" if @profile.is_cat
    check "Is dog" if @profile.is_dog
    check "Is lgbt" if @profile.is_lgbt
    check "Is non smoker" if @profile.is_non_smoker
    check "Is student" if @profile.is_student
    fill_in "Looking for", with: @profile.looking_for
    fill_in "Move in date", with: @profile.move_in_date
    fill_in "Occupation", with: @profile.occupation
    fill_in "Stay length", with: @profile.stay_length
    fill_in "User", with: @profile.user_id
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
