class DeleteForeignKeys < ActiveRecord::Migration
  def change
    remove_column :venues, :event_id
    remove_column :bands, :event_id
  end
end
