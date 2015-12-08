class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.date :production_date
      t.float :a, :default => 0.0
      t.float :b, :default => 0.0
      t.float :c, :default => 0.0
      t.float :d, :default => 0.0
      t.float :pa, :default => 0.0
      t.float :pb, :default => 0.0

      t.timestamps
    end
  end
end
