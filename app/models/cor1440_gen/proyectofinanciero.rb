# encoding: UTF-8

require 'cor1440_gen/concerns/models/proyectofinanciero'

module Cor1440Gen
  class Proyectofinanciero < ActiveRecord::Base
    include Cor1440Gen::Concerns::Models::Proyectofinanciero


    attr_accessor :semestreformulacion

    campofecha_localizado :fechaaprobacion
    campofecha_localizado :fechaformulacion
    campofecha_localizado :fechaliquidacion

    campofecha_mesanio :fechaformulacion

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

    scope :filtro_fechaformulacionini, lambda { |f|
      where('cor1440_gen_proyectofinanciero.fechaformulacion >= ?', f)
    }

    scope :filtro_fechaformulacionfin, lambda { |f|
      where('cor1440_gen_proyectofinanciero.fechaformulacion <= ?', f)
    }


  end
end
