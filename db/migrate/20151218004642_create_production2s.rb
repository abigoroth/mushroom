class CreateProduction2s < ActiveRecord::Migration
  def change
    create_table :production2s do |t|
      t.integer :house_id
      t.date :date
      t.float :am
      t.float :pm

      t.timestamps
    end
  end
end
