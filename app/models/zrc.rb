class Zrc < ActiveRecord::Base
  include Sip::Basica
  belongs_to :estadozrc, optional: true
  has_many :orgsocial, 
    class_name: 'Sip::Orgsocial'
end
