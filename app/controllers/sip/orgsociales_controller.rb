# encoding: UTF-8
require_dependency "sip/concerns/controllers/orgsociales_controller"

module Sip
  class OrgsocialesController < Heb412Gen::ModelosController
    include Sip::Concerns::Controllers::OrgsocialesController

    def vistas_manejadas
      ['Orgsocial']
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
      [ :orgsocial_persona => [] ] +
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
          :orgsocial_persona_attributes => [
            :id,
            :perfilorgsocial_id,
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

    def orgsocial_params
      params.require(:orgsocial).permit(lista_params)
    end

  end 

end
