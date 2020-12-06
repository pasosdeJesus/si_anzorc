require_dependency "cor1440_gen/concerns/controllers/proyectosfinancieros_controller"

module Cor1440Gen
  class ProyectosfinancierosController < Heb412Gen::ModelosController
    include Cor1440Gen::Concerns::Controllers::ProyectosfinancierosController

    before_action :set_proyectofinanciero,
      only: [:show, :edit, :update, :destroy]      
    skip_before_action :set_proyectofinanciero, only: [:validar]

    load_and_authorize_resource  class: Cor1440Gen::Proyectofinanciero,
      only: [:new, :create, :destroy, :edit, :update, :index, :show,
             :objetivospf]

    def proyectofinanciero_params_si_anzorc
      proyectofinanciero_params_cor1440_gen - [
      ] + [
        :estado,
        :dificultad,
        :fechaaprobacion_localizada,
        :fechacierre_localizada,
        :fechaformulacion_localizada,
        :fechaformulacion_anio,
        :fechaformulacion_mes,
        :fechaliquidacion_localizada
      ]
    end

    def proyectofinanciero_params
      params.require(:proyectofinanciero).permit(
        proyectofinanciero_params_si_anzorc)
    end

  end
end
