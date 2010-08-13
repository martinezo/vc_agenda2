class CreateAgendaReservations < ActiveRecord::Migration
  def self.up
    create_table :agenda_reservations do |t|
      t.integer :event_id
      t.integer :resource_id
      t.datetime :start_date_time
      t.datetime :end_date_time

      t.timestamps
    end
  end

  def self.down
    drop_table :agenda_reservations
  end
end
