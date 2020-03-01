# encoding: UTF-8

module Admin
  class NivelesorganzorcController < Sip::Admin::BasicasController
    before_action :set_nivelorganzorc, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Nivelorganzorc

    def clase 
      "::Nivelorganzorc"
    end

    def set_nivelorganzorc
      @basica = Nivelorganzorc.find(params[:id])
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

    def nivelorganzorc_params
      params.require(:nivelorganzorc).permit(*atributos_form)
    end

  end
end
