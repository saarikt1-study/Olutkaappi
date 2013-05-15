class AddReviewIdArrayColumnToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :review_id_array, :integer, :array => true
  end
end
