# encoding: UTF-8
require_dependency "cor1440_gen/concerns/controllers/actividades_controller"

module Cor1440Gen
  class ActividadesController < Heb412Gen::ModelosController

    include Cor1440Gen::Concerns::Controllers::ActividadesController

    def atributos_show
      [ :id, 
        :fecha_localizada, 
        :nombre, 
        :responsable,
        :proyectosfinancieros,
        :actividadpf, 
        :objetivo,
        :poblacion,
        :anexos
      ]
    end

    def atributos_index
      i = atributos_show.index(:proyectosfinancieros)
      r = atributos_show
      r[i] = :proyectofinanciero
      return r
    end

    def atributos_form
      atributos_show - [:id, 'id']
    end

  end
end
