module Cor1440Gen
  class Informenarrativo < ActiveRecord::Base
    include Sip::Localizacion

    belongs_to :proyectofinanciero, 
      class_name: 'Cor1440Gen::Proyectofinanciero', 
      foreign_key: 'proyectofinanciero_id'

    validates :detalle, length: { maximum: 5000}
    validates :seguimiento, length: { maximum: 5000}

    default_scope { order(:id) }

    campofecha_localizado :fecha

    validate :fecha_posterior_inicio
    def fecha_posterior_inicio
      if fecha && 
          proyectofinanciero &&
          proyectofinanciero.fechainicio &&
          fecha < proyectofinanciero.fechainicio then
        errors.add(:fecha,
                   "La fecha debe ser posterior a la de inicio")
      end
    end

    def presenta_nombre
      self.detalle
    end

  end
end
