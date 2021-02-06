require 'test_helper'

class CrapsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get craps_show_url
    assert_response :success
  end

  test "should get index" do
    get craps_index_url
    assert_response :success
  end

  test "should get destroy" do
    get craps_destroy_url
    assert_response :success
  end

  test "should get new" do
    get craps_new_url
    assert_response :success
  end

  test "should get create" do
    get craps_create_url
    assert_response :success
  end

end
