class StaticPagesController < ApplicationController
  def home
    @beer = Beer.all[params[:id].to_i]
    @user = User.new
  end

  def search
  end

  def olutsivu
    @beer = Beer.find_by_name(params[:name])

    @relation = BeerUserRelation.new
    
    @reviews = Review.find(:all, :conditions => ['beer_id = ?', @beer.id])
    if session[:current_user] != nil
      @review = Review.find(:all, :conditions => ['user_id = ?', session[:current_user].id]).first
      @relations = BeerUserRelation.find(:all, :conditions => ['
        user_id = ? AND beer_id = ?', session[:current_user].id, @beer.id])
      if @relations != nil
        @relation = @relations.first
      end
    end
    if @review == nil
      @review = Review.create
    end
    if @beer == nil
      redirect_to '/search'
    end
  end

  def oluttietoa
  end

  def oluen_valmistus
  end

  def olutlasit
  end

  def vehnaolut
  end

  def ale
  end

  def stout_ja_porter
  end

  def erikoisolut
  end

  def lager
  end

  def tumma_lager
  end

  def pils
  end

  def vahva_lager
  end

  def search
    @results = Beer.search(params[:search])
  end

  def logout
    reset_session
    redirect_to :home
  end
end
