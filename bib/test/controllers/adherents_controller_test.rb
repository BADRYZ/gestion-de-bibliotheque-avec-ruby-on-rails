require "test_helper"

class AdherentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adherents_index_url
    assert_response :success
  end

  test "should get new" do
    get adherents_new_url
    assert_response :success
  end

  test "should get create" do
    get adherents_create_url
    assert_response :success
  end

  test "should get edit" do
    get adherents_edit_url
    assert_response :success
  end

  test "should get update" do
    get adherents_update_url
    assert_response :success
  end

  test "should get destroy" do
    get adherents_destroy_url
    assert_response :success
  end
end
