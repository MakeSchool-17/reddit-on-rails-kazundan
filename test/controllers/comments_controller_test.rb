require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  def setup
      @comment = comments(:commentjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "comments can be edited" do
      new_content = "Looking forward to many things!"
      patch :update, id: @comment, comment: {content: new_content}
      @comment.reload
      assert_equal @comment.content, new_content
  end

end
