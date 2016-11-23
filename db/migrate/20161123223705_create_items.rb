class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :checklist_id
      t.string :item_name

      t.timestamps

    end
  end
end
