require "test_helper"

class EmpruntsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get emprunts_index_url
    assert_response :success
  end

  test "should get new" do
    get emprunts_new_url
    assert_response :success
  end

  test "should get create" do
    get emprunts_create_url
    assert_response :success
  end

  test "should get edit" do
    get emprunts_edit_url
    assert_response :success
  end

  test "should get update" do
    get emprunts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get emprunts_destroy_url
    assert_response :success
  end
end
