class Catalogs::Resource < ActiveRecord::Base
  validates :abbr, :name, :id_color, :presence => true
  has_many :reservations, :class_name => 'Agenda::Reservation'
end
