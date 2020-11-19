# encoding: UTF-8

module Admin
  class NodosController < Sip::Admin::BasicasController
    before_action :set_nodo, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Nodo

    def clase 
      "::Nodo"
    end

    def set_nodo
      @basica = Nodo.find(params[:id])
    end

    def atributos_index
      [
        :id, 
        :nombre, 
        :observaciones, 
        :fechacreacion_localizada, 
        :carpeta,
        :geojson,
        :habilitado
      ]
    end

    def atributos_form
      [
        :nombre, 
        :observaciones, 
        :carpeta,
        :geojson,
        :habilitado
      ]
    end

    def genclase
      'M'
    end

    def nodo_params
      params.require(:nodo).permit(*atributos_form)
    end

  end
end
