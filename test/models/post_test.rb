require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
      @post = posts(:js)
  end

  test "post is valid" do
      assert @post.valid?
  end

  test "title should be present" do
      @post.title = "     "
      assert_not @post.valid?
  end

  test "content should be present" do
      @post.content = "    "
      assert_not @post.valid?
  end

  test "post can have comments" do
    comment = comments(:commentjs)
    comment.post = @post
    comment.save
    comment.reload
    assert_equal comment.post, @post
    assert @post.reload.comments.include? comment
  end
end
