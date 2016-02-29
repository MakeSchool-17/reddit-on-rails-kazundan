require 'test_helper'

class SubredditTest < ActiveSupport::TestCase
  def setup
      @subreddit = subreddits(:javascript)
  end

  test "subreddit is valid" do
      assert @subreddit.valid?
  end

  test "title should be present" do
      @subreddit.title = "    "
      assert_not @subreddit.valid?
  end

  test "title should not be long" do
      @subreddit.title = "a" * 301
      assert_not @subreddit.valid?
  end

  # FIXME: We need to add more tests (validating uniqueness)
end
