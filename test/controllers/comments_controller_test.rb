require 'test_helper'

class ResponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end

  test "should get index" do
    get comments_url
    assert_comment :success
  end

  test "should get new" do
    get new_comment_url
    assert_comment :success
  end

  test "should create comment" do
    assert_difference('Response.count') do
      post comments_url, params: { comment: { title: @comment.title } }
    end

    assert_redirected_to comment_url(Response.last)
  end

  test "should show comment" do
    get comment_url(@comment)
    assert_comment :success
  end

  test "should get edit" do
    get edit_comment_url(@comment)
    assert_comment :success
  end

  test "should update comment" do
    patch comment_url(@comment), params: { comment: { title: @comment.title } }
    assert_redirected_to comment_url(@comment)
  end

  test "should destroy comment" do
    assert_difference('Response.count', -1) do
      delete comment_url(@comment)
    end

    assert_redirected_to comments_url
  end
end