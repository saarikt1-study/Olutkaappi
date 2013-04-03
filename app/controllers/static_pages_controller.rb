class StaticPagesController < ApplicationController
  def home
  end

  def search
  end

  def beer
  	@beer = Beer.all[params[:id].to_i]
  end
end
