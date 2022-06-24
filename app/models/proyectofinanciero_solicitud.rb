class ProyectofinancieroSolicitud < ActiveRecord::Base
  include Sip::Modelo 

  belongs_to :proyectofinanciero, 
    class_name: 'Cor1440Gen::Proyectofinanciero',
    validate: true, foreign_key: 'proyectofinanciero_id', optional: false
  belongs_to :solicitud, class_name: 'Sip::Solicitud', validate: true,
    foreign_key: 'solicitud_id', optional: false
  accepts_nested_attributes_for :solicitud, reject_if: :all_blank

end
