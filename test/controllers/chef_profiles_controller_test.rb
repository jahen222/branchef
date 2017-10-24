require 'test_helper'

class ChefProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chef_profile = chef_profiles(:one)
  end

  test "should get index" do
    get chef_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_chef_profile_url
    assert_response :success
  end

  test "should create chef_profile" do
    assert_difference('ChefProfile.count') do
      post chef_profiles_url, params: { chef_profile: {  } }
    end

    assert_redirected_to chef_profile_url(ChefProfile.last)
  end

  test "should show chef_profile" do
    get chef_profile_url(@chef_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_chef_profile_url(@chef_profile)
    assert_response :success
  end

  test "should update chef_profile" do
    patch chef_profile_url(@chef_profile), params: { chef_profile: {  } }
    assert_redirected_to chef_profile_url(@chef_profile)
  end

  test "should destroy chef_profile" do
    assert_difference('ChefProfile.count', -1) do
      delete chef_profile_url(@chef_profile)
    end

    assert_redirected_to chef_profiles_url
  end
end
