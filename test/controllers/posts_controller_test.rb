require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "post can be created" do
    assert_difference 'Post.count', 1 do
      post :create, post: { title: "lorem", content: "Lorem ipsum" }
    end

    # count_before = Post.count
    # post :create, post: { title: "lorem", content: "Lorem ipsum" }
    # count_after = Post.count
    # assert count_after == count_before + 1
  end
end
