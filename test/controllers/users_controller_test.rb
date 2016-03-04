require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  def setup
    @user = users(:kazu)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "Non-registered user can register" do
    assert_difference 'User.count', 1 do
      post :create, user: { email: "dan@example.com" }
    end
  end

end
