# encoding: UTF-8

require 'cor1440_gen/concerns/models/proyectofinanciero'

module Cor1440Gen
  class Proyectofinanciero < ActiveRecord::Base
    include Cor1440Gen::Concerns::Models::Proyectofinanciero


    attr_accessor :semestreformulacion
    attr_accessor :montoejp_localizado
    attr_accessor :aportepropioejp_localizado
    attr_accessor :aportecinepejp_localizado
    attr_accessor :aporteotrosejp_localizado
    attr_accessor :presupuestototalejp_localizado

    cattr_accessor :current_usuario

    campofecha_localizado :fechaaprobacion
    campofecha_localizado :fechaformulacion
    campofecha_localizado :fechaliquidacion

    flotante_localizado :aportepropioej
    flotante_localizado :aporteotrosej
    flotante_localizado :montoej
    flotante_localizado :presupuestototalej
    flotante_localizado :saldoaejecutarp
    flotante_localizado :tasaej


    campofecha_mesanio :fechaformulacion

    belongs_to :tipomoneda, class_name: 'Cor1440Gen::Tipomoneda',
      foreign_key: 'tipomoneda_id', optional: true


    has_many :desembolso, dependent: :delete_all,
      class_name: 'Cor1440Gen::Desembolso',
      foreign_key: 'proyectofinanciero_id', validate: true
    accepts_nested_attributes_for :desembolso, 
      allow_destroy: true, reject_if: :all_blank

    validate :fechainicio_posterior2000 
    def fechainicio_posterior2000
      if fechainicio && fechainicio < Date.new(2000,1,1)
        errors.add(:fechainicio, 'Fecha de inicio debe ser posterior a 1/Ene/2000')
      end
    end

    validate :dificultad_valida
    def dificultad_valida
      cv = Cor1440Gen::ApplicationHelper::DIFICULTAD.map {|r| r[1].to_s}
      if !cv.include?(dificultad)
        errors.add(:dificultad, 'Dificultad no es válida')
      end
    end

    validate :estado_valido
    def estado_valido
      cv = Cor1440Gen::ApplicationHelper::ESTADO.map {|r| r[1].to_s}
      if !cv.include?(estado)
        errors.add(:estado, 'Estado no es válido')
      end
    end

    def semestreformulacion
      if fechaformulacion
        if fechaformulacion.month<=6
          '1'
        else
          '2'
        end
      end
    end

    def montoejp_localizado
      r = 0
      r = montoej * tasaej if montoej && tasaej
      r.a_decimal_localizado
    end

    def aportepropioejp_localizado
      r = 0
      r = aportepropioej * tasaej if aportepropioej && tasaej
      r.a_decimal_localizado
    end

    def aporteotrosejp_localizado
      r = 0
      r = aporteotrosej * tasaej if aporteotrosej && tasaej
      r.a_decimal_localizado
    end

    def presupuestototalej_localizado=(val)
      self[:presupuestototalej] = 0
      if self.montoej && self.aportepropioej && self.aporteotrosej
        self[:presupuestototalej] = self.montoej + self.aportepropioej +
          self.aporteotrosej 
      end
    end

    def presupuestototalejp_localizado
      r = 0
      r = presupuestototalej * tasaej if presupuestototalej && tasaej
      r.a_decimal_localizado
    end
 
    scope :filtro_fechaformulacionini, lambda { |f|
      where('cor1440_gen_proyectofinanciero.fechaformulacion >= ?', f)
    }

    scope :filtro_fechaformulacionfin, lambda { |f|
      where('cor1440_gen_proyectofinanciero.fechaformulacion <= ?', f)
    }


  end
end
