class SkiShopController < ApplicationController
  def index
    @ski_shops = SkiShop.all.order(created_at: :desc)
  end

  def show
    @ski_shop = SkiShop.find(params[:id])
    @ski_count = @ski_shop.ski_count
  end
end