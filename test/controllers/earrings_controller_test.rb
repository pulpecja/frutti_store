require 'test_helper'

class EarringsControllerTest < ActionController::TestCase
  setup do
    @earring = earrings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:earrings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create earring" do
    assert_difference('Earring.count') do
      post :create, earring: { description: @earring.description, name: @earring.name, price: @earring.price }
    end

    assert_redirected_to earring_path(assigns(:earring))
  end

  test "should show earring" do
    get :show, id: @earring
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @earring
    assert_response :success
  end

  test "should update earring" do
    patch :update, id: @earring, earring: { description: @earring.description, name: @earring.name, price: @earring.price }
    assert_redirected_to earring_path(assigns(:earring))
  end

  test "should destroy earring" do
    assert_difference('Earring.count', -1) do
      delete :destroy, id: @earring
    end

    assert_redirected_to earrings_path
  end
end
