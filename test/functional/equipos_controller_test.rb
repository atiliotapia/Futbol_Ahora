require 'test_helper'

class EquiposControllerTest < ActionController::TestCase
  setup do
    @equipo = equipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipo" do
    assert_difference('Equipo.count') do
      post :create, equipo: @equipo.attributes
    end

    assert_redirected_to equipo_path(assigns(:equipo))
  end

  test "should show equipo" do
    get :show, id: @equipo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipo.to_param
    assert_response :success
  end

  test "should update equipo" do
    put :update, id: @equipo.to_param, equipo: @equipo.attributes
    assert_redirected_to equipo_path(assigns(:equipo))
  end

  test "should destroy equipo" do
    assert_difference('Equipo.count', -1) do
      delete :destroy, id: @equipo.to_param
    end

    assert_redirected_to equipos_path
  end
end
