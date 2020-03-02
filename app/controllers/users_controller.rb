class UsersController < ApplicationController
  def index
      @users = User.all
      @shop = Shop.new
      @user = User.find(current_user.id)
  end

  def show
  	@user = User.find(params[:id])
  	@shops = @user.shops
    @shop = Shop.new
  end
end
