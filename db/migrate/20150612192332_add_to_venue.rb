class AddToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :phone_number, :string
    add_column :venues, :website, :string
  end
end
