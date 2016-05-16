class DropTableProductions < ActiveRecord::Migration
  def change
	drop_table :productions
	rename_table :production2s, :productions
  end
end
