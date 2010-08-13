require 'test_helper'

class Catalogs::ResourcesControllerTest < ActionController::TestCase
  setup do
    @catalogs_resource = catalogs_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalogs_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalogs_room" do
    assert_difference('Catalogs::Resource.count') do
      post :create, :catalogs_room => @catalogs_resource.attributes
    end

    assert_redirected_to catalogs_room_path(assigns(:catalogs_room))
  end

  test "should show catalogs_room" do
    get :show, :id => @catalogs_resource.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @catalogs_resource.to_param
    assert_response :success
  end

  test "should update catalogs_room" do
    put :update, :id => @catalogs_resource.to_param, :catalogs_room => @catalogs_resource.attributes
    assert_redirected_to catalogs_room_path(assigns(:catalogs_room))
  end

  test "should destroy catalogs_room" do
    assert_difference('Catalogs::Resource.count', -1) do
      delete :destroy, :id => @catalogs_resource.to_param
    end

    assert_redirected_to catalogs_resources_path
  end
end
