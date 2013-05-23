class StaticPagesController < ApplicationController
  def home
    @beer = Beer.all[params[:id].to_i]
    @user = User.new
  end

  def search
  end

  def olutsivu
    @beer = Beer.find_by_name(params[:name])
    @relation = nil
    
    @reviews = Review.find(:all, :conditions => ['beer_id = ?', @beer.id])
    if session[:current_user] != nil
      @review = Review.find(:all, :conditions => ['user_id = ? AND beer_id = ?', 
        session[:current_user].id, @beer.id]).first
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

    if @relation == nil
      @relation = BeerUserRelation.new
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

  def omasivu
    @reviews = Review.find(:all, :conditions => ['user_id = ?', session[:current_user].id])
    @relations = BeerUserRelation.find(:all, :conditions => ['user_id = ?', session[:current_user].id])
  end

  def search
    @results = Beer.search(params[:search])
  end

  def logout
    reset_session
    redirect_to :home
  end

  def login
    user = User.find(:all, :conditions => ['username LIKE ? AND password LIKE ?', params[:username], params[:password]]).first
    if user != nil
      session[:current_user] = user
      redirect_to :omasivu
    else
      redirect_to :back
    end
  end
end
