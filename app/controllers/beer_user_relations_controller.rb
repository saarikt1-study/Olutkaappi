class BeerUserRelationsController < ApplicationController
	def create
		relation = BeerUserRelation.new
		relation.user_id = params[:user_id]
		relation.beer_id = params[:beer_id]
		relation.number_of_drinks = 1
		relation.save
		redirect_to :back
	end

	def update
		relation = BeerUserRelation.find params[:id]
		relation.number_of_drinks = relation.number_of_drinks + 1
		relation.save
		redirect_to :back
	end
end
