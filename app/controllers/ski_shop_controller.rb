class SkiShopController < ApplicationController
  def index
    @ski_shops = SkiShop.all.order(created_at: :desc)
  end

  def show
    @ski_shop = SkiShop.find(params[:id])
    @ski_count = @ski_shop.ski_count
  end

  def new
  end

  def create
    SkiShop.create(name: params[:name],
                    location_quantity: params[:location_quantity],
                      rents_clothes: params[:rents_clothes])
    redirect_to '/ski_shops'
  end

end