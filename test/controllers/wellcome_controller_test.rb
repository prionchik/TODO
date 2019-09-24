require 'test_helper'

class WellcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wellcome_index_url
    assert_response :success
  end

  test "should get update" do
    get wellcome_update_url
    assert_response :success
  end

  test "should get create" do
    get wellcome_create_url
    assert_response :success
  end

end
