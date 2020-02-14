require 'test_helper'
require_relative '../../models/nodo_test'

PRUEBA_USUARIO = {
  nusuario: "admin",
  password: "sjrven123",
  nombre: "admin",
  descripcion: "admin",
  rol: 1,
  idioma: "es_CO",
  email: "usuario1@localhost",
  encrypted_password: '$2a$10$uMAciEcJuUXDnpelfSH6He7BxW0yBeq6VMemlWc5xEl6NZRDYVA3G',
  sign_in_count: 0,
  fechacreacion: "2014-08-05",
  fechadeshabilitacion: nil
}

class NodosControllerTest < ActionDispatch::IntegrationTest
  #include Engine.routes.url_helpers
  include Devise::Test::IntegrationHelpers

  setup do
    @nodo = ::Nodo.create(NodoTest::PRUEBA_NODO)
    @current_usuario = ::Usuario.create(PRUEBA_USUARIO)
    sign_in @current_usuario
  end

  test "should get index" do
    skip
    get admin_nodos_url
    assert_template 'index'
  end

  test "should get new" do
    skip
    get new_admin_nodo_url
    assert_response :success
  end

  test "should create nodo" do
    skip
    assert_difference('Nodo.count') do
      post :create, nodo: { created_at: @nodo.created_at, fechacreacion: @nodo.fechacreacion, fechadeshabilitacion: @nodo.fechadeshabilitacion, nombre: @nodo.nombre, observaciones: @nodo.observaciones, updated_at: @nodo.updated_at }
    end

    assert_redirected_to nodo_path(assigns(:nodo))
  end

  test "should show nodo" do
    skip
    get :show, id: @nodo
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @nodo
    assert_response :success
  end

  test "should update nodo" do
    skip
    patch :update, id: @nodo, nodo: { created_at: @nodo.created_at, fechacreacion: @nodo.fechacreacion, fechadeshabilitacion: @nodo.fechadeshabilitacion, nombre: @nodo.nombre, observaciones: @nodo.observaciones, updated_at: @nodo.updated_at }
    assert_redirected_to nodo_path(assigns(:nodo))
  end

  test "should destroy nodo" do
    skip
    assert_difference('Nodo.count', -1) do
      delete :destroy, id: @nodo
    end

    assert_redirected_to nodos_path
  end
end
