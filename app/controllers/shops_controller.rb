class ShopsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, {only: [:edit]}
  def index
    @shops = Shop.all
  	@shop = Shop.new
    @user = current_user
  end

  def show
	@shop = Shop.find(params[:id])
    @user = @shop.user
  end

  def create
	shop = Shop.new(shop_params)
    shop.user_id = current_user.id
	if  shop.save
        redirect_to shop_path(shop.id),notice:"successfully"
    else
     flash[:notice] = "error"
	   redirect_to shops_path
    end
  end

 private
  def shop_params
    params.require(:shop).permit(:shop_name,:caption)
  end
end