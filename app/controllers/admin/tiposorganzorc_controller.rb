module Admin
  class TiposorganzorcController < Sip::Admin::BasicasController
    before_action :set_tipoorganzorc, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Tipoorganzorc

    def clase 
      "::Tipoorganzorc"
    end

    def set_tipoorganzorc
      @basica = Tipoorganzorc.find(params[:id])
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

    def tipoorganzorc_params
      params.require(:tipoorganzorc).permit(*atributos_form)
    end

  end
end
