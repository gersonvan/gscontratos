require 'test_helper'

class ActionObjectsControllerTest < ActionController::TestCase
  setup do
    @action_object = action_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_object" do
    assert_difference('ActionObject.count') do
      post :create, action_object: { objeto: @action_object.objeto }
    end

    assert_redirected_to action_object_path(assigns(:action_object))
  end

  test "should show action_object" do
    get :show, id: @action_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @action_object
    assert_response :success
  end

  test "should update action_object" do
    patch :update, id: @action_object, action_object: { objeto: @action_object.objeto }
    assert_redirected_to action_object_path(assigns(:action_object))
  end

  test "should destroy action_object" do
    assert_difference('ActionObject.count', -1) do
      delete :destroy, id: @action_object
    end

    assert_redirected_to action_objects_path
  end
end
