require 'test_helper'

class AccessiblePlacesControllerTest < ActionController::TestCase
  setup do
    @accessible_place = accessible_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accessible_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accessible_place" do
    assert_difference('AccessiblePlace.count') do
      post :create, accessible_place: { extra_info: @accessible_place.extra_info, name: @accessible_place.name }
    end

    assert_redirected_to accessible_place_path(assigns(:accessible_place))
  end

  test "should show accessible_place" do
    get :show, id: @accessible_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accessible_place
    assert_response :success
  end

  test "should update accessible_place" do
    put :update, id: @accessible_place, accessible_place: { extra_info: @accessible_place.extra_info, name: @accessible_place.name }
    assert_redirected_to accessible_place_path(assigns(:accessible_place))
  end

  test "should destroy accessible_place" do
    assert_difference('AccessiblePlace.count', -1) do
      delete :destroy, id: @accessible_place
    end

    assert_redirected_to accessible_places_path
  end
end
