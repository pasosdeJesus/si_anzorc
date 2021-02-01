# encoding: UTF-8

class Zrc < ActiveRecord::Base
  include Sip::Basica
  belongs_to :estadozrc, optional: true
  has_many :actorsocial, 
    class_name: 'Sip::Actorsocial'
end
