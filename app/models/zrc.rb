# encoding: UTF-8

class Zrc < ActiveRecord::Base
  include Sip::Basica
  belongs_to :estadozrc, optional: true
end
