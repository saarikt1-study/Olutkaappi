class ReviewsController < ApplicationController
	def create
		@review = Review.create params[:review]
		@review.user_id = session[:current_user].id
		@review.beer_id = params[:beer_id]
		@review.save
		redirect_to :back
	end
end
