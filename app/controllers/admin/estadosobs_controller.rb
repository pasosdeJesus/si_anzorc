# encoding: UTF-8

module Admin
  class EstadosobsController < Sip::Admin::BasicasController
    before_action :set_estadoobs, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Estadoobs

    def clase 
      "::Estadoobs"
    end

    def set_estadoobs
      @basica = Estadoobs.find(params[:id])
    end

    def atributos_index
      [
        :id, 
        :nombre, 
        :observaciones, 
        :fechacreacion_localizada, 
        :habilitado
      ]
    end

    def genclase
      'M'
    end

    def estadoobs_params
      params.require(:estadoobs).permit(*atributos_form)
    end

  end
end
