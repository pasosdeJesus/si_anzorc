# encoding: UTF-8

require 'cor1440_gen/concerns/models/actorsocial'

module Sip
  class Actorsocial < ActiveRecord::Base
    include Cor1440Gen::Concerns::Models::Actorsocial

    belongs_to :zrc, optional: true
    belongs_to :nivelorganzorc, optional: true
    belongs_to :tipoorganzorc, optional: true
    validates :nit, length: { maximum: 500 }
    validates :carpeta, length: { maximum: 5000 }

  end
end
