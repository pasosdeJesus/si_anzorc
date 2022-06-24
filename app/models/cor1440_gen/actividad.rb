require 'cor1440_gen/concerns/models/actividad'

module Cor1440Gen
  class Actividad < ActiveRecord::Base
    include Cor1440Gen::Concerns::Models::Actividad
    include Sip::Localizacion

    has_many :actividad_solicitud, dependent: :delete_all,
      class_name: 'ActividadSolicitud',
      foreign_key: 'actividad_id'
    has_many :solicitud, through: :actividad_solicitud, 
      dependent: :delete_all,
      class_name: 'Sip::Solicitud'
    accepts_nested_attributes_for :solicitud,
      allow_destroy: true, reject_if: :all_blank
    accepts_nested_attributes_for :actividad_solicitud,
      allow_destroy: true, reject_if: :all_blank

    def presenta(atr)
      total= 0
      case atr.to_s
      when 'poblacion_total'
        total = poblacion_hombres_r_solore +
            poblacion_mujeres_r_solore +
            poblacion_sinsexo_solore
        return total
      when 'responsable_numerodocumento'
        self.responsable && self.responsable.numerodocumento ? 
          self.responsable.numerodocumento : ''
      when 'proyecto_centro_de_costo'
        self.proyectofinanciero.map(&:centrocosto).join(';')
      else
        presenta_cor1440_gen(atr)
      end
    end
  end
end
