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

    def registrar_en_bitacora
      true
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
        :centrocosto,
        :estado,
        :dificultad,
        :fechaaprobacion_localizada,
        :fechacierre_localizada,
        :fechaformulacion_localizada,
        :fechaformulacion_anio,
        :fechaformulacion_mes,
        :fechaliquidacion_localizada,
        :tasaej_localizado,
        :montoej_localizado,
        :aportepropioej_localizado,
        :aporteotrosej_localizado,
        :presupuestototalej_localizado,
        :saldoaejecutarp_localizado,
        :tipomoneda_id
      ]
    end

    def proyectofinanciero_params
      params.require(:proyectofinanciero).permit(
        proyectofinanciero_params_si_anzorc)
    end

  end
end
