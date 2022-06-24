class ActividadSolicitud < ActiveRecord::Base
  include Sip::Modelo 

  belongs_to :actividad, class_name: 'Cor1440Gen::Actividad',
    validate: true, foreign_key: 'actividad_id', optional: false
  belongs_to :solicitud, class_name: 'Sip::Solicitud', validate: true,
    foreign_key: 'solicitud_id', optional: false
  accepts_nested_attributes_for :solicitud, reject_if: :all_blank

end
