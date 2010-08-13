require 'test_helper'

class Agenda::EventsControllerTest < ActionController::TestCase
  setup do
    @agenda_event = agenda_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agenda_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agenda_event" do
    assert_difference('Agenda::Event.count') do
      post :create, :agenda_event => @agenda_event.attributes
    end

    assert_redirected_to agenda_event_path(assigns(:agenda_event))
  end

  test "should show agenda_event" do
    get :show, :id => @agenda_event.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @agenda_event.to_param
    assert_response :success
  end

  test "should update agenda_event" do
    put :update, :id => @agenda_event.to_param, :agenda_event => @agenda_event.attributes
    assert_redirected_to agenda_event_path(assigns(:agenda_event))
  end

  test "should destroy agenda_event" do
    assert_difference('Agenda::Event.count', -1) do
      delete :destroy, :id => @agenda_event.to_param
    end

    assert_redirected_to agenda_events_path
  end
end
