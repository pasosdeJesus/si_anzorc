# encoding: UTF-8
require_dependency "sip/concerns/controllers/actoressociales_controller"

module Sip
  class ActoressocialesController < Heb412Gen::ModelosController
    include Sip::Concerns::Controllers::ActoressocialesController

    def vistas_manejadas
      ['Actorsocial']
    end

    def atributos_index
      [ :id, 
        :grupoper_id,
        :zrc,
        :nivelorganzorc,
        :tipoorganzorc,
        :nit,
        :web,
        :telefono, 
        :fax,
        :direccion,
        :numasociados,
        :numasociadas,
        :carpeta,
      ] +
      [ :actorsocial_persona => [] ] +
      [
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
          :nivelorganzorc_id,
          :tipoorganzorc_id,
          :grupoper_attributes => [
            :id,
            :nombre,
            :anotaciones ],
          :actorsocial_persona_attributes => [
            :id,
            :perfilactorsocial_id,
            :correo,
            :_destroy,
            :persona_attributes => [
              :id,
              :nombres,
              :apellidos,
            ]
          ]
        ] 
    end

    def actorsocial_params
      params.require(:actorsocial).permit(lista_params)
    end

  end 

end
