require 'test_helper'

class EstadozrcTest < ActiveSupport::TestCase

  PRUEBA_ESTADOZRC = {
    nombre: "Estadozrc",
    fechacreacion: "2020-01-14",
    created_at: "2020-01-14"
  }

  test "valido" do
    estadozrc = ::Estadozrc.create(
      PRUEBA_ESTADOZRC)
    assert(estadozrc.valid?)
    estadozrc.destroy
  end

  test "no valido" do
    estadozrc = ::Estadozrc.new(
      PRUEBA_ESTADOZRC)
    estadozrc.nombre = ''
    assert_not(estadozrc.valid?)
    estadozrc.destroy
  end

  test "existente" do
    estadozrc = ::Estadozrc.where(id: 1).take
    assert_equal(estadozrc.nombre, "Constituida")
  end

end
