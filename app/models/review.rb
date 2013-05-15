class Review < ActiveRecord::Base
	attr_accessible :beer_id, :user_id, :title, :stars, :review_text
end
