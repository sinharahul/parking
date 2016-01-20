require 'test_helper'

class DeleteControllerTest < ActionController::TestCase
  test "should get guser" do
    get :guser
    assert_response :success
  end

end
