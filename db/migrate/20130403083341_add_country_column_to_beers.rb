class AddCountryColumnToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :country, :string

  end
end
