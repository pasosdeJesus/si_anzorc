# encoding: UTF-8

require 'sivel2_gen/concerns/models/persona'
require 'cor1440_gen/concerns/models/persona'

module Sip
  class Persona < ActiveRecord::Base

    SEXO_OPCIONES = [
      ['OTRO', :S], 
      ['FEMENINO', :F], 
      ['MASCULINO', :M]
    ]

    SEXO_OPCIONES_CORTAS = [
      ['O', :S], 
      ['F', :F], 
      ['M', :M]
    ]

    include Sivel2Gen::Concerns::Models::Persona
    include Cor1440Gen::Concerns::Models::Persona

  end
end
