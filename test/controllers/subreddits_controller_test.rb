require 'test_helper'

class SubredditsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "subreddit can be added" do
      assert_difference 'Subreddit.count', 1 do
          post :create, subreddit: { title: "Types of phones" }
      end
  end

end
