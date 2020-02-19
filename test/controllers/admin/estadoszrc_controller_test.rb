require 'test_helper'

class EstadoszrcControllerTest < ActionController::TestCase
  setup do
    skip
    @estadozrc = Estadozrc(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:estadozrc)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create estadozrc" do
    skip
    assert_difference('Estadozrc.count') do
      post :create, estadozrc: { created_at: @estadozrc.created_at, fechacreacion: @estadozrc.fechacreacion, fechadeshabilitacion: @estadozrc.fechadeshabilitacion, nombre: @estadozrc.nombre, observaciones: @estadozrc.observaciones, updated_at: @estadozrc.updated_at }
    end

    assert_redirected_to estadozrc_path(assigns(:estadozrc))
  end

  test "should show estadozrc" do
    skip
    get :show, id: @estadozrc
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @estadozrc
    assert_response :success
  end

  test "should update estadozrc" do
    skip
    patch :update, id: @estadozrc, estadozrc: { created_at: @estadozrc.created_at, fechacreacion: @estadozrc.fechacreacion, fechadeshabilitacion: @estadozrc.fechadeshabilitacion, nombre: @estadozrc.nombre, observaciones: @estadozrc.observaciones, updated_at: @estadozrc.updated_at }
    assert_redirected_to estadozrc_path(assigns(:estadozrc))
  end

  test "should destroy estadozrc" do
    skip
    assert_difference('Estadozrc.count', -1) do
      delete :destroy, id: @estadozrc
    end

    assert_redirected_to estadoszrc_path
  end
end
