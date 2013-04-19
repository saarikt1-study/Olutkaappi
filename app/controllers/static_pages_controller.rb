class StaticPagesController < ApplicationController
  def home
    @beer = Beer.all[params[:id].to_i]
  end

  def search
  end

  def olutsivu
  	@beer = Beer.find_by_name(params[:name])
    if @beer == nil
      redirect_to '/search'
    end
  end

  def oluttietoa
  end

  def olutlasit
  end

  def vehnaolut
  end

  def search
    @results = Beer.search(params[:search])
  end
end
