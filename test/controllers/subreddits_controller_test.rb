require 'test_helper'

class SubredditsControllerTest < ActionController::TestCase
  def setup
      @subreddit = subreddits(:javascript)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "subreddit can be added" do
      assert_difference 'Subreddit.count', 1 do
          post :create, subreddit: { title: "Types of phones" }
      end
  end

  test "subreddit can be edited" do
      new_title = "React"
      patch :update, id: @subreddit, subreddit: {title: new_title}
      @subreddit.reload
      assert_equal @subreddit.title, new_title
  end

end
