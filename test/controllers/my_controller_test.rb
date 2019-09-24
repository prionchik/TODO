require 'test_helper'

class MyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_index_url
    assert_response :success
  end

  test "should get update" do
    get my_update_url
    assert_response :success
  end

  test "should get create" do
    get my_create_url
    assert_response :success
  end

end
