class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :website
      t.text :bio
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
