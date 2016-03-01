require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
      @Post = posts(:js)
  end

  test "post is valid" do
      assert @Post.valid?
  end

  test "title should be present" do
      @Post.title = "     "
      assert_not @Post.valid?
  end

  test "content should be present" do
      @Post.content = "    "
      assert_not @Post.valid?
  end

  test "post can have comments" do
    comment = comments(:commentjs)
    comment.post = @Post
    comment.save
    comment.reload
    assert_equal comment.post, @Post
    assert @Post.reload.comments.include? comment
  end
end
