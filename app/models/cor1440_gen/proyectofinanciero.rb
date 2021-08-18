require 'cor1440_gen/concerns/models/proyectofinanciero'

module Cor1440Gen
  class Proyectofinanciero < ActiveRecord::Base
    include Cor1440Gen::Concerns::Models::Proyectofinanciero

    has_many :observacion_proyectofinanciero, dependent: :delete_all,
      class_name: 'ObservacionProyectofinanciero',
      foreign_key: 'proyectofinanciero_id'
    has_many :observacion, through: :observacion_proyectofinanciero, 
      dependent: :delete_all,
      class_name: 'Observacion'
    accepts_nested_attributes_for :observacion,
      allow_destroy: true, reject_if: :all_blank
    accepts_nested_attributes_for :observacion_proyectofinanciero,
      allow_destroy: true, reject_if: :all_blank

  end
end
