require 'test_helper'

class ComentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coment = coments(:one)
  end

  test "should get index" do
    get coments_url
    assert_response :success
  end

  test "should get new" do
    get new_coment_url
    assert_response :success
  end

  test "should create coment" do
    assert_difference('Coment.count') do
      post coments_url, params: { coment: { content: @coment.content, post_id: @coment.post_id, user_id: @coment.user_id } }
    end

    assert_redirected_to coment_url(Coment.last)
  end

  test "should show coment" do
    get coment_url(@coment)
    assert_response :success
  end

  test "should get edit" do
    get edit_coment_url(@coment)
    assert_response :success
  end

  test "should update coment" do
    patch coment_url(@coment), params: { coment: { content: @coment.content, post_id: @coment.post_id, user_id: @coment.user_id } }
    assert_redirected_to coment_url(@coment)
  end

  test "should destroy coment" do
    assert_difference('Coment.count', -1) do
      delete coment_url(@coment)
    end

    assert_redirected_to coments_url
  end
end
