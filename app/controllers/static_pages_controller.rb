class StaticPagesController < ApplicationController
  def home
  end

  def search
  end

  def olutsivu
  	@beer = Beer.all[params[:id].to_i]
  end
end
