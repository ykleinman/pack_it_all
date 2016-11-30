class AddItemCountToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :items_count, :integer
  end
end
