class Observacion < ActiveRecord::Base
  include Sip::Modelo

  belongs_to :usuario, foreign_key: 'usuario_id', dependent: :destroy,
    class_name: 'Usuario', optional: false
  belongs_to :estadoobs, foreign_key: "estadoobs_id", validate: true,
    class_name: "Estadoobs", optional: true

  has_and_belongs_to_many :usuarionotificar, 
    class_name: 'Usuario',
    foreign_key: :observacion_id, 
    association_foreign_key: 'usuarionotificar_id',
    join_table: 'usuarionotificar_observacion'
end
