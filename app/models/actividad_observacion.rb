# encoding: UTF-8

class ActividadObservacion < ActiveRecord::Base
  include Sip::Modelo 

  belongs_to :actividad, class_name: 'Cor1440Gen::Actividad',
    validate: true, foreign_key: 'actividad_id'
  belongs_to :observacion, class_name: 'Observacion', validate: true,
    foreign_key: 'observacion_id'
  accepts_nested_attributes_for :observacion, reject_if: :all_blank

end
