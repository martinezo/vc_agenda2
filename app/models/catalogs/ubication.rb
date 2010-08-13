class Catalogs::Ubication < ActiveRecord::Base
  validates :abbr, :name, :presence => true
end
