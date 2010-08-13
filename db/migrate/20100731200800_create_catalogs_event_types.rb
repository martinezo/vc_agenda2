class CreateCatalogsEventTypes < ActiveRecord::Migration
  def self.up
    create_table :catalogs_event_types do |t|
      t.string :abbr
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :catalogs_event_types
  end
end
