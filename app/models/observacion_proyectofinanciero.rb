# encoding: UTF-8

class ObservacionProyectofinanciero < ActiveRecord::Base
  include Sip::Modelo 

  belongs_to :proyectofinanciero, 
    class_name: 'Cor1440Gen::Proyectofinanciero',
    validate: true, foreign_key: 'proyectofinanciero_id'
  belongs_to :observacion, class_name: 'Observacion', validate: true,
    foreign_key: 'observacion_id'
  accepts_nested_attributes_for :observacion, reject_if: :all_blank

end
