require "test_helper"

class PhotographiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photography = photographies(:one)
  end

  test "should get index" do
    get photographies_url
    assert_response :success
  end

  test "should get new" do
    get new_photography_url
    assert_response :success
  end

  test "should create photography" do
    assert_difference("Photography.count") do
      post photographies_url, params: { photography: { content: @photography.content, photo: @photography.photo, user_id: @photography.user_id } }
    end

    assert_redirected_to photography_url(Photography.last)
  end

  test "should show photography" do
    get photography_url(@photography)
    assert_response :success
  end

  test "should get edit" do
    get edit_photography_url(@photography)
    assert_response :success
  end

  test "should update photography" do
    patch photography_url(@photography), params: { photography: { content: @photography.content, photo: @photography.photo, user_id: @photography.user_id } }
    assert_redirected_to photography_url(@photography)
  end

  test "should destroy photography" do
    assert_difference("Photography.count", -1) do
      delete photography_url(@photography)
    end

    assert_redirected_to photographies_url
  end
end
