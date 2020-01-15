require 'test_helper'

class ZrcsControllerTest < ActionController::TestCase
  setup do
    skip
    @zrc = Zrc(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:zrc)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create zrc" do
    skip
    assert_difference('Zrc.count') do
      post :create, zrc: { created_at: @zrc.created_at, fechacreacion: @zrc.fechacreacion, fechadeshabilitacion: @zrc.fechadeshabilitacion, nombre: @zrc.nombre, observaciones: @zrc.observaciones, updated_at: @zrc.updated_at }
    end

    assert_redirected_to zrc_path(assigns(:zrc))
  end

  test "should show zrc" do
    skip
    get :show, id: @zrc
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @zrc
    assert_response :success
  end

  test "should update zrc" do
    skip
    patch :update, id: @zrc, zrc: { created_at: @zrc.created_at, fechacreacion: @zrc.fechacreacion, fechadeshabilitacion: @zrc.fechadeshabilitacion, nombre: @zrc.nombre, observaciones: @zrc.observaciones, updated_at: @zrc.updated_at }
    assert_redirected_to zrc_path(assigns(:zrc))
  end

  test "should destroy zrc" do
    skip
    assert_difference('Zrc.count', -1) do
      delete :destroy, id: @zrc
    end

    assert_redirected_to zrcs_path
  end
end
