class BeersController < ApplicationController
  def index
  	@beers = Beer.all
  	@beer = Beer.new
  end

  def create
  	Beer.create params[:beer]
  	redirect_to :back
  end

  def edit
  	@beer = Beer.find params[:id]
  end

  def update
  	beer = Beer.find params[:id]
  	if beer.update_attributes params[:beer]
  		redirect_to beers_path,	
  		:notice => 'Oluen paivitys onnistui'
  	else
  		redirect_to :back,
  		:notice => 'ERROR, tyhjia kenttia ei hyvaksyta!'
  	end
  end

  def destroy
  	Beer.destroy params[:id]
  	redirect_to beers_path,
  	:notice => 'Olut poistettu'
  end
end
