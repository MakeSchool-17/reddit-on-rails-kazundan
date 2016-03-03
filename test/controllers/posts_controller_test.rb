require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  def setup
    @post = posts(:js)
  end

  test "post can be created" do
    assert_difference 'Post.count', 1 do
      post :create, post: { title: "lorem", content: "Lorem ipsum" }
    end

    # count_before = Post.count
    # post :create, post: { title: "lorem", content: "Lorem ipsum" }
    # count_after = Post.count
    # assert count_after == count_before + 1
  end

  test "post can be edited" do
      new_title = "lorem2"
      new_content = "Lorem ipsum2"
      patch :update, id: @post, post: { title: new_title, content: new_content }
      # extract title from post (after reload?)
      @post.reload
      assert_equal @post.title, new_title
      assert_equal @post.content, new_content
    #   assert_equal "lorem2"
  end
end
