class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :location
      t.integer :user_id
      t.date :dates

      t.timestamps

    end
  end
end
