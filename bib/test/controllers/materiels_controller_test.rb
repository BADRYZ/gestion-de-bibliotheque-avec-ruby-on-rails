require "test_helper"

class MaterielsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get materiels_index_url
    assert_response :success
  end

  test "should get new" do
    get materiels_new_url
    assert_response :success
  end

  test "should get create" do
    get materiels_create_url
    assert_response :success
  end

  test "should get edit" do
    get materiels_edit_url
    assert_response :success
  end

  test "should get update" do
    get materiels_update_url
    assert_response :success
  end

  test "should get destroy" do
    get materiels_destroy_url
    assert_response :success
  end
end
