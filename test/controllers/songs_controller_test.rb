require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get songs_add_url
    assert_response :success
  end

  test "should get create" do
    get songs_create_url
    assert_response :success
  end

  test "should get index" do
    get songs_index_url
    assert_response :success
  end

  test "should get show" do
    get songs_show_url
    assert_response :success
  end

  test "should get song_params" do
    get songs_song_params_url
    assert_response :success
  end

end
