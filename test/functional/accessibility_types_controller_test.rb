require 'test_helper'

class AccessibilityTypesControllerTest < ActionController::TestCase
  setup do
    @accessibility_type = accessibility_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accessibility_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accessibility_type" do
    assert_difference('AccessibilityType.count') do
      post :create, accessibility_type: { description: @accessibility_type.description, name: @accessibility_type.name, organization_link: @accessibility_type.organization_link }
    end

    assert_redirected_to accessibility_type_path(assigns(:accessibility_type))
  end

  test "should show accessibility_type" do
    get :show, id: @accessibility_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accessibility_type
    assert_response :success
  end

  test "should update accessibility_type" do
    put :update, id: @accessibility_type, accessibility_type: { description: @accessibility_type.description, name: @accessibility_type.name, organization_link: @accessibility_type.organization_link }
    assert_redirected_to accessibility_type_path(assigns(:accessibility_type))
  end

  test "should destroy accessibility_type" do
    assert_difference('AccessibilityType.count', -1) do
      delete :destroy, id: @accessibility_type
    end

    assert_redirected_to accessibility_types_path
  end
end
