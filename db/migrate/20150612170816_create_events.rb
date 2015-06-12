class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :band_id
      t.integer :venue_id
      t.datetime :event_date
      t.timestamps null: false
    end
  end
end
