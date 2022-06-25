require_dependency "cor1440_gen/concerns/controllers/proyectosfinancieros_controller"

module Cor1440Gen
  class ProyectosfinancierosController < Heb412Gen::ModelosController

    # No requiere autorización por ser clase a incluir en otras
    
    include Cor1440Gen::Concerns::Controllers::ProyectosfinancierosController

    before_action :set_proyectofinanciero,
      only: [:show, :edit, :update, :destroy]      
    skip_before_action :set_proyectofinanciero, only: [:validar]

    load_and_authorize_resource  class: Cor1440Gen::Proyectofinanciero,
      only: [:new, :create, :destroy, :edit, :update, :index, :show,
             :objetivospf]

    def registrar_en_bitacora
      true
    end


    def atributos_show
      [ 
        :id,
        :nombre,
        :titulo 
      ] +
      [ :financiador_ids =>  [] ] + [
        :sectorapc,
        :fechainicio_localizada,
        :fechacierre_localizada,
        :duracion,
        :anioformulacion,
        :mesformulacion,
        :fechaaprobacion_localizada,
        :fechaliquidacion_localizada,
        :estado,
        :dificultad,
        :responsable,
        :aprobadoobs,
        :proyectofinanciero_usuario,
      ] +
      [ :tipomoneda,
        :tasaej,
        :desembolso, 
        :informenarrativo,
        :informefinanciero,
        :informeauditoria,
        :marcologico,
        :anexo_proyectofinanciero,
        :solicitudes, 
        :caracterizacion, 
        :beneficiario,
        :plantillahcm,
      ]
    end

    def atributos_index
      atributos_index_cor1440
    end

    def matriz_seguimiento
      if !params || !params[:id] || Cor1440Gen::Proyectofinanciero.where(
          id: params[:id]).count == 0
        return
      end
      @registro = @proyectofinanciero = Cor1440Gen::Proyectofinanciero.find(
        params[:id])

      render :matriz_seguimiento, layout: 'application'
    end

    def validar_registro(registro, detalle)
      detalleini = detalle.clone
      if !registro.fechainicio && 
        ::ApplicationHelper::ESTADOS_APROBADO.include?(registro.estado)
        detalle << "No tiene fecha de inicio"
      elsif registro.fechainicio && registro.fechainicio < Date.new(2000, 1, 1)
        detalle << "Fecha de inicio anterior al 1.Ene.2000"
      end
      if !registro.fechacierre && 
        ::ApplicationHelper::ESTADOS_APROBADO.include?(registro.estado)
        detalle << "No tiene fecha de terminación"
      elsif registro.fechacierre && registro.fechainicio &&
        registro.fechacierre <= registro.fechainicio
        detalle << "Fecha de terminación posterior o igual a la de inicio"
      end
      validar_mas_registro(registro, detalle)
      return detalleini == detalle
    end

    def proyectofinanciero_params_si_anzorc
      proyectofinanciero_params_cor1440_gen - [
      ] + [
        :proyectofinanciero_solicitud_attributes => [
          :id,
          :_destroy,
          :solicitud_attributes => [
            :id,
            :usuario_id, 
            :fecha,
            :solicitud,
            :estadosol_id,
            :usuarionotificar_ids => []
          ]
        ]
      ]
    end

    def proyectofinanciero_params
      params.require(:proyectofinanciero).permit(
        proyectofinanciero_params_si_anzorc)
    end

  end
end
