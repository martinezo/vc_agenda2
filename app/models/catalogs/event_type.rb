class Catalogs::EventType < ActiveRecord::Base
   validates :abbr, :name, :presence => true
end
