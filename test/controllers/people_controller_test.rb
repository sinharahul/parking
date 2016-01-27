require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    sign_in users(:user1)
   
  end
  test "should get list" do
    get :list
    assert_response :success
  end

end
