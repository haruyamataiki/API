class ShopsController < ApplicationController
  def index
    @shops=Shop.all
  	@shop = Shop.new
    @user = current_user
  end

  def show
	@shop = Shop.find(params[:id])
    @Shop = Shop.new
    @user = @Shop.user
  end

 private
  def shop_params
    params.require(:shop).permit(:shop_name,:caption)
  end
end