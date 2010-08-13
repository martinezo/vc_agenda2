class CreateCatalogsRooms < ActiveRecord::Migration
  def self.up
    create_table :catalogs_rooms do |t|
      t.string :name
      t.string :abbr
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :catalogs_rooms
  end
end
