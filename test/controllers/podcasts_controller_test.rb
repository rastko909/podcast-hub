require 'test_helper'

class PodcastsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get podcasts_index_url
    assert_response :success
  end

  test "should get new" do
    get podcasts_new_url
    assert_response :success
  end

  test "should get create" do
    get podcasts_create_url
    assert_response :success
  end

  test "should get show" do
    get podcasts_show_url
    assert_response :success
  end

  test "should get edit" do
    get podcasts_edit_url
    assert_response :success
  end

  test "should get update" do
    get podcasts_update_url
    assert_response :success
  end

  test "should get delete" do
    get podcasts_delete_url
    assert_response :success
  end

end
