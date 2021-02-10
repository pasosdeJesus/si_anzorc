# encoding: UTF-8

class Estadoobs < ActiveRecord::Base

  NOAPROBADO = 1
  APROBADO = 2
  include Sip::Basica
end
