class SkiShopController < ApplicationController
  def index
    @ski_shops = SkiShop.all
  end

  def show
    @ski_shop = SkiShop.find(params[:id])
    # require 'pry'; binding.pry
  end
end