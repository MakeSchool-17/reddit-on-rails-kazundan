require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
      @comment = comments(:commentjs)
  end

  test "comment is valid" do
      assert @comment.valid?
  end

  test "content should be present" do
    @comment.content = "     "
    assert_not @comment.valid?
  end
  
end
