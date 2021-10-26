require 'test_helper'

class ZrcTest < ActiveSupport::TestCase

  PRUEBA_ZRC = {
    nombre: "Zrc",
    fechacreacion: "2020-01-14",
    created_at: "2020-01-14"
  }

  test "valido" do
    zrc = ::Zrc.create(
      PRUEBA_ZRC)
    assert(zrc.valid?)
    zrc.destroy
  end

  test "no valido" do
    zrc = ::Zrc.new(
      PRUEBA_ZRC)
    zrc.nombre = ''
    assert_not(zrc.valid?)
    zrc.destroy
  end

  test "existente" do
    skip
    zrc = ::Zrc.where(id: 0).take
    assert_equal(zrc.nombre, "SIN INFORMACIÓN")
  end

end
