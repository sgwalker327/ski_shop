class SkiShopSkisController < ApplicationController
  def index
    @ski_shop = SkiShop.find(params[:id])
    @skis = @ski_shop.skis
  end
end