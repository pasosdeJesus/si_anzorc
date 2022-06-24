require 'sip/concerns/models/estadosol'

module Sip
  class Estadosol < ActiveRecord::Base
    include Sip::Concerns::Models::Estadosol

    NOAPROBADO = NOCONFIRMADO = 1 
    APROBADO = 2
  end
end
