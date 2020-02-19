# encoding: UTF-8
require_dependency "sip/concerns/controllers/actoressociales_controller"

module Sip
  class ActoressocialesController < Sip::ModelosController
    include Sip::Concerns::Controllers::ActoressocialesController


    def atributos_index
      [ :id, 
        :grupoper_id,
        :zrc,
        :web,
        :telefono, 
        :fax,
        :direccion,
        :habilitado
      ]
    end

    def atributos_show
      atributos_index - [:habilitado] + 
        [:fechadeshabilitacion_localizada]
    end

    def atributos_form
      a = atributos_show - [:id]
      a[a.index(:grupoper_id)] = :grupoper
      return a
    end

    def lista_params 
      atributos_form - [:grupoper] +
        [ :zrc_id, 
          :grupoper_attributes => [
            :id,
            :nombre,
            :anotaciones ]
      ]
    end

    def actorsocial_params
      params.require(:actorsocial).permit(lista_params)
    end

  end 

end
