class CreateBeers < ActiveRecord::Migration
  def change
  	create_table :beers do |t|
      t.string :name
      t.string :beer_type
      t.string :alc
      t.string :brewery
      t.string :country
      t.string :img

      t.timestamps
    end
  end
end
