require 'test_helper'

class ClientetiposControllerTest < ActionController::TestCase
  setup do
    @clientetipo = clientetipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientetipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clientetipo" do
    assert_difference('Clientetipo.count') do
      post :create, clientetipo: @clientetipo.attributes
    end

    assert_redirected_to clientetipo_path(assigns(:clientetipo))
  end

  test "should show clientetipo" do
    get :show, id: @clientetipo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clientetipo.to_param
    assert_response :success
  end

  test "should update clientetipo" do
    put :update, id: @clientetipo.to_param, clientetipo: @clientetipo.attributes
    assert_redirected_to clientetipo_path(assigns(:clientetipo))
  end

  test "should destroy clientetipo" do
    assert_difference('Clientetipo.count', -1) do
      delete :destroy, id: @clientetipo.to_param
    end

    assert_redirected_to clientetipos_path
  end
end
