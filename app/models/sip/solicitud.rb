module Sip
  class Solicitud < ActiveRecord::Base
    include Sip::Modelo

    belongs_to :usuario, foreign_key: 'usuario_id', dependent: :destroy,
      class_name: 'Usuario', optional: false
    belongs_to :estadosol, foreign_key: "estadosol_id", validate: true,
      class_name: "Sip::Estadosol", optional: true

    has_and_belongs_to_many :usuarionotificar, 
      class_name: 'Usuario',
      foreign_key: :solicitud_id, 
      association_foreign_key: 'usuarionotificar_id',
      join_table: 'sip_solicitud_usuarionotificar'
  end
end
