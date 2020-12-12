
# encoding: UTF-8

require 'cor1440_gen/concerns/models/actividad'

module Cor1440Gen
  class Actividad < ActiveRecord::Base
    include Cor1440Gen::Concerns::Models::Actividad
    include Sip::Localizacion

    has_many :actividad_observacion, dependent: :delete_all,
      class_name: 'ActividadObservacion',
      foreign_key: 'actividad_id'
    has_many :observacion, through: :actividad_observacion, dependent: :delete_all,
      class_name: 'Observacion'
    accepts_nested_attributes_for :observacion,
      allow_destroy: true, reject_if: :all_blank
    accepts_nested_attributes_for :actividad_observacion,
      allow_destroy: true, reject_if: :all_blank

    def presenta(atr)
      total= 0
      case atr.to_s
      when 'poblacion_total'
        total = poblacion_hombres_r_solore +
            poblacion_mujeres_r_solore +
            poblacion_sinsexo_solore
        return total
      end
      presenta_actividad(atr)
    end
  end
end
