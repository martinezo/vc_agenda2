class Agenda::Reservation < ActiveRecord::Base
  belongs_to :resource,  :class_name => 'Catalogs::Resource'
end
