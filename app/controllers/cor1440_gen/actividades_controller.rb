# encoding: UTF-8
require_dependency "cor1440_gen/concerns/controllers/actividades_controller"

module Cor1440Gen
  class ActividadesController < Heb412Gen::ModelosController

    include Cor1440Gen::Concerns::Controllers::ActividadesController

    before_action :set_actividad, 
      only: [:show, :edit, :update, :destroy],
      exclude: [:contar]
    load_and_authorize_resource class: Cor1440Gen::Actividad

    def update
      update_gen
    end

    def atributos_show
      [ 
        :id, 
        :fecha_localizada, 
        :nombre, 
        :responsable,
        :proyectofinanciero,
        :actividadpf, 
        :objetivo,
        :respuestafor,
        :actorsocial,
        :listadoasistencia,
        :poblacion,
        :anexos,
        :observacion
      ]
    end

    def atributos_index
      [ 
        :actividadpf, 
        :id, 
        :fecha_localizada, 
        :nombre, 
        :responsable,
        :proyectofinanciero,
        :objetivo,
        :resultado,
        :poblacion_hombres_r,
        :poblacion_mujeres_r,
        :poblacion_sinsexo,
        :poblacion_total,
        :anexos
      ]
    end

    def atributos_form
      atributos_show - [:id, 'id', :actividadpf]
    end

    def lista_params
      lista_params_cor1440_gen + 
        [
          :actividad_observacion_attributes => [
            :id,
            :_destroy,
            :observacion_attributes => [
              :id,
              :usuario_id, 
              :fecha,
              :observacion,
              :estado_id,
              :usuarionotificar_ids => []
            ]
          ]
        ]
    end

    def edit
      edit_cor1440_gen
      render layout: 'application'
    end

    def destroy
      aobs = ActividadObservacion.where(actividad_id: @actividad.id)
      aobs.each do |ao|
        ao.destroy!
      end
      @actividad.destroy!
      redirect_to actividades_path,  :flash => { :success => "Actividad eliminada!" }
    end

  end
end
