require 'test_helper'

class Agenda::ReservationsControllerTest < ActionController::TestCase
  setup do
    @agenda_reservation = agenda_reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agenda_reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agenda_reservation" do
    assert_difference('Agenda::Reservation.count') do
      post :create, :agenda_reservation => @agenda_reservation.attributes
    end

    assert_redirected_to agenda_reservation_path(assigns(:agenda_reservation))
  end

  test "should show agenda_reservation" do
    get :show, :id => @agenda_reservation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @agenda_reservation.to_param
    assert_response :success
  end

  test "should update agenda_reservation" do
    put :update, :id => @agenda_reservation.to_param, :agenda_reservation => @agenda_reservation.attributes
    assert_redirected_to agenda_reservation_path(assigns(:agenda_reservation))
  end

  test "should destroy agenda_reservation" do
    assert_difference('Agenda::Reservation.count', -1) do
      delete :destroy, :id => @agenda_reservation.to_param
    end

    assert_redirected_to agenda_reservations_path
  end
end
