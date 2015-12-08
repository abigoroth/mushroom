class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
      t.string :name
      t.string :state
      t.date :open_date
      t.date :harvest_date
      t.date :close_date
      t.date :end_date
      t.integer :cycle , :default => 0
      t.integer :house_id

      t.timestamps
    end
  end
end
