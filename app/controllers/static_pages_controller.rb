class StaticPagesController < ApplicationController
  def home
    @beer = Beer.all[params[:id].to_i]
  end

  def search
  end

  def olutsivu
  	@beer = Beer.find params[:id]
  end

  def oluttietoa
  end

  def search
    @results = Beer.search(params[:search])
  end
end
