class CreateReviews < ActiveRecord::Migration
  def change
  	create_table :reviews do |t|
      t.integer :beer_id
      t.integer :user_id
  	  t.string :title
      t.integer :stars
      t.text :review_text

      t.timestamps
  	end
  end
end
