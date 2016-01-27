require 'test_helper'

class StatusControllerTest < ActionController::TestCase
  setup do
      sign_in users(:user1)
     
    end
  test "should get index" do
    get :index
    assert_response :success
  end

end
