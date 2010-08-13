class RenameCatalogsTables < ActiveRecord::Migration
  def self.up
    rename_table :catalogs_rooms, :catalogs_resources
    #rename_table :catalogs_event_types, :catalogs_event_types
    #rename_table :catalogs_ubications, :catalogs_ubications
  end

  def self.down
    rename_table  :catalogs_resources, :catalogs_rooms
    #rename_table  :catalogs_event_types, :catalogs_event_types
    #rename_table  :catalogs_ubications, :catalogs_ubications
  end
end
