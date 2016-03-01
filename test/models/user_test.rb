require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = users(:kazu)
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "email should be present" do
    @user.email = "    "
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "user can have posts" do
      post = posts(:js)
      post.user = @user
      post.save
      post.reload
      assert_equal @user, post.user
      assert @user.reload.posts.include? post
  end

  # FIXME: We need to add more tests (validating fomat, uniqueness)
end
