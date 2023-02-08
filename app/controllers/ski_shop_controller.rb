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
    SkiShop.create(ski_shop_params)
    redirect_to '/ski_shops'
  end

  def edit
    @ski_shop = SkiShop.find(params[:id])
  end

  def update
    # require 'pry'; binding.pry
    @ski_shop = SkiShop.find(params[:id])
    @ski_shop.update(ski_shop_params)
    redirect_to "/ski_shops/#{@ski_shop.id}"
  end

  private
  def ski_shop_params
    params.permit(:name, :location_quantity, :rents_clothes)
  end
end