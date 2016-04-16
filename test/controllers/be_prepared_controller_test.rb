require 'test_helper'

class BePreparedControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get resources" do
    get :resources
    assert_response :success
  end

  test "should get etsimation_flight" do
    get :etsimation_flight
    assert_response :success
  end

end
