require 'test_helper'

class WordCloudsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @word_cloud = word_clouds(:one)
  end

  test "should get index" do
    get word_clouds_url
    assert_response :success
  end

  test "should get new" do
    get new_word_cloud_url
    assert_response :success
  end

  test "should create word_cloud" do
    assert_difference('WordCloud.count') do
      post word_clouds_url, params: { word_cloud: {  } }
    end

    assert_redirected_to word_cloud_url(WordCloud.last)
  end

  test "should show word_cloud" do
    get word_cloud_url(@word_cloud)
    assert_response :success
  end

  test "should get edit" do
    get edit_word_cloud_url(@word_cloud)
    assert_response :success
  end

  test "should update word_cloud" do
    patch word_cloud_url(@word_cloud), params: { word_cloud: {  } }
    assert_redirected_to word_cloud_url(@word_cloud)
  end

  test "should destroy word_cloud" do
    assert_difference('WordCloud.count', -1) do
      delete word_cloud_url(@word_cloud)
    end

    assert_redirected_to word_clouds_url
  end
end
