require 'test_helper'

class CarRegistrationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "create new car registration" do
    car=CarRegistration.new
  end
end
