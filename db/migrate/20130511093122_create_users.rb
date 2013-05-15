class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.integer :beer_id_array, :array => true
      t.integer :review_id_array, :array => true

      t.timestamps
    end
  end
end
