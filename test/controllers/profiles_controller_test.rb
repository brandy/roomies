require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { age: @profile.age, budget: @profile.budget, children: @profile.children, description: @profile.description, gender: @profile.gender, is_cannabis: @profile.is_cannabis, is_cat: @profile.is_cat, is_dog: @profile.is_dog, is_lgbt: @profile.is_lgbt, is_non_smoker: @profile.is_non_smoker, is_student: @profile.is_student, looking_for: @profile.looking_for, move_in_data: @profile.move_in_data, occupation: @profile.occupation, stay_length: @profile.stay_length, user_id: @profile.user_id } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { age: @profile.age, budget: @profile.budget, children: @profile.children, description: @profile.description, gender: @profile.gender, is_cannabis: @profile.is_cannabis, is_cat: @profile.is_cat, is_dog: @profile.is_dog, is_lgbt: @profile.is_lgbt, is_non_smoker: @profile.is_non_smoker, is_student: @profile.is_student, looking_for: @profile.looking_for, move_in_data: @profile.move_in_data, occupation: @profile.occupation, stay_length: @profile.stay_length, user_id: @profile.user_id } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
