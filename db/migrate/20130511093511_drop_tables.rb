class DropTables < ActiveRecord::Migration
  def change
  	drop_table :users
  	drop_table :reviews
  end
end
