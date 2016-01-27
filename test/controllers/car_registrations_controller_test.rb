require 'test_helper'

class CarRegistrationsControllerTest < ActionController::TestCase
  setup do
    sign_in users(:user1)
    @car_registration = car_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_registration" do
    assert_difference('CarRegistration.count') do
      post :create, car_registration: { license: @car_registration.license, month: @car_registration.month, owner: @car_registration.owner }
    end

    assert_redirected_to car_registration_path(assigns(:car_registration))
  end

  test "should show car_registration" do
    get :show, id: @car_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_registration
    assert_response :success
  end

  test "should update car_registration" do
    patch :update, id: @car_registration, car_registration: { license: @car_registration.license, month: @car_registration.month, owner: @car_registration.owner }
    assert_redirected_to car_registration_path(assigns(:car_registration))
  end

  test "should destroy car_registration" do
    assert_difference('CarRegistration.count', -1) do
      delete :destroy, id: @car_registration
    end

    assert_redirected_to car_registrations_path
  end
end
