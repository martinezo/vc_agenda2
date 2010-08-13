class CreateAgendaEvents < ActiveRecord::Migration
  def self.up
    create_table :agenda_events do |t|
      t.string :requester_name
      t.string :requester_email
      t.integer :ubication_id
      t.string :description
      t.integer :event_type_id
      t.text :commentaries
      t.string :status
      t.datetime :status_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :agenda_events
  end
end
