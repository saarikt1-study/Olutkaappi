class CreateBeerUserRelations < ActiveRecord::Migration
  def change
    create_table :beer_user_relations do |t|
    	t.integer :user_id
    	t.integer :beer_id
    	t.integer :number_of_drinks, :default => 0

      	t.timestamps
    end
  end
end
