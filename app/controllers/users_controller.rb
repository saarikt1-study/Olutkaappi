class UsersController < ApplicationController

  def create
  	@user = User.create params[:user]
  	session[:current_user] = @user 
  	redirect_to :omasivu
  end

end
