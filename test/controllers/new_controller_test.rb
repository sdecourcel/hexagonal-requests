require 'test_helper'

class NewControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get new_create_url
    assert_response :success
  end

  test "should get update_status_confirmed" do
    get new_update_status_confirmed_url
    assert_response :success
  end

  test "should get email_to_confirm" do
    get new_email_to_confirm_url
    assert_response :success
  end

  test "should get email_confirmed" do
    get new_email_confirmed_url
    assert_response :success
  end

end
