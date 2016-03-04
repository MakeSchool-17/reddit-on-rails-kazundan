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

  test "user's information can be edited" do
      new_email = "dan@example.com"
      patch :update, id: @user, user: { email: new_email }
      @user.reload
      assert_equal @user.email, new_email
  end

  test "user can be deleted" do
    assert_difference 'User.count', -1 do
      delete :destroy, id: @user
    end
  end

end
