class ReviewsController < ApplicationController
	def create
		@review = Review.new params[:review]
		@review.user_id = session[:current_user].id
	#	if !Review.count(:conditions => ['beer_id = ?', params[:beer_id]])
			@review.beer_id = params[:beer_id]
			@review.save
	#	end
		redirect_to :back
	end

	def update
  		review = Review.find(params[:id])
  		review.update_attributes params[:review]
  		redirect_to :back
  	end
end
