require 'cor1440_gen/concerns/models/proyectofinanciero'

module Cor1440Gen
  class Proyectofinanciero < ActiveRecord::Base
    include Cor1440Gen::Concerns::Models::Proyectofinanciero

    has_many :proyectofinanciero_solicitud, dependent: :delete_all,
      class_name: 'ProyectofinancieroSolicitud',
      foreign_key: 'proyectofinanciero_id'
    has_many :solicitud, through: :proyectofinanciero_solicitud, 
      dependent: :delete_all,
      class_name: 'Sip::Solicitud'
    accepts_nested_attributes_for :solicitud,
      allow_destroy: true, reject_if: :all_blank
    accepts_nested_attributes_for :proyectofinanciero_solicitud,
      allow_destroy: true, reject_if: :all_blank

  end
end
