require "test_helper"

class UserRegistersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_registers_new_url
    assert_response :success
  end

  test "should get create" do
    get user_registers_create_url
    assert_response :success
  end

  test "should get update" do
    get user_registers_update_url
    assert_response :success
  end

  test "should get delete" do
    get user_registers_delete_url
    assert_response :success
  end
end
