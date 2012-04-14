require 'test_helper'

class DocumentotiposControllerTest < ActionController::TestCase
  setup do
    @documentotipo = documentotipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documentotipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documentotipo" do
    assert_difference('Documentotipo.count') do
      post :create, documentotipo: @documentotipo.attributes
    end

    assert_redirected_to documentotipo_path(assigns(:documentotipo))
  end

  test "should show documentotipo" do
    get :show, id: @documentotipo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documentotipo.to_param
    assert_response :success
  end

  test "should update documentotipo" do
    put :update, id: @documentotipo.to_param, documentotipo: @documentotipo.attributes
    assert_redirected_to documentotipo_path(assigns(:documentotipo))
  end

  test "should destroy documentotipo" do
    assert_difference('Documentotipo.count', -1) do
      delete :destroy, id: @documentotipo.to_param
    end

    assert_redirected_to documentotipos_path
  end
end
