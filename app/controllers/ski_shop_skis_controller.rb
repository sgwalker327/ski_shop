class SkiShopSkisController < ApplicationController
  def index
    @ski_shop = SkiShop.find(params[:ski_shop_id])
    @skis = @ski_shop.skis
  end
end