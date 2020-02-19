# encoding: UTF-8

require 'test_helper'

class NodoTest < ActiveSupport::TestCase

  PRUEBA_NODO = {
    nombre: "Nodo",
    fechacreacion: "2020-01-13",
    created_at: "2020-01-13"
  }

  test "valido" do
    nodo = ::Nodo.create(
      PRUEBA_NODO)
    assert(nodo.valid?)
    nodo.destroy
  end

  test "no valido" do
    nodo = ::Nodo.new(
      PRUEBA_NODO)
    nodo.nombre = ''
    assert_not(nodo.valid?)
    nodo.destroy
  end

  test "existente" do
    nodo = ::Nodo.where(id: 1).take
    assert_equal(nodo.nombre, "CARIBE")
  end

end
