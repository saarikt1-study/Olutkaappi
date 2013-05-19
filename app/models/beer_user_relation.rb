class BeerUserRelation < ActiveRecord::Base
	attr_accessible :user_id, :beer_id, :number_of_drinks
end
