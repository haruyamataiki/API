class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, {only: [:edit]}
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
