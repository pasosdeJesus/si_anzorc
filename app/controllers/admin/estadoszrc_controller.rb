module Admin
  class EstadoszrcController < Sip::Admin::BasicasController
    before_action :set_estadozrc, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Estadozrc

    def clase 
      "::Estadozrc"
    end

    def set_estadozrc
      @basica = Estadozrc.find(params[:id])
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

    def estadozrc_params
      params.require(:estadozrc).permit(*atributos_form)
    end

  end
end
