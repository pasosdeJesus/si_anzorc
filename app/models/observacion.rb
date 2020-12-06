# encoding: UTF-8

class Observacion < ActiveRecord::Base
  include Sip::Modelo

   has_and_belongs_to_many :usuarionotificar, 
    class_name: 'Usuario',
    foreign_key: :observacion_id, 
    association_foreign_key: 'usuarionotificar_id',
    join_table: 'usuarionotificar_observacion'
  belongs_to :usuario, foreign_key: 'usuario_id', dependent: :destroy,
    class_name: 'Usuario'
  belongs_to :estadoobs, foreign_key: "estado_id", validate: true,
    class_name: "Estadoobs", optional: true
end
