class AddIdColorToResources < ActiveRecord::Migration
  def self.up
    add_column :catalogs_resources, :id_color, :string
  end

  def self.down
    remove_column :catalogs_resources, :id_color
  end
end
