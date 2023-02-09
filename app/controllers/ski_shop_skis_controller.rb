class SkiShopSkisController < ApplicationController
  def index
    @ski_shop = SkiShop.find(params[:id])
    @skis = @ski_shop.skis
  end

  def new
    @ski_shop = SkiShop.find(params[:id])
  end
  
  def create
    ski_shop = SkiShop.find(params[:id])
    new_ski = Ski.create!(ski_params)

    new_ski.save

    redirect_to "/ski_shops/#{ski_shop.id}/skis"
  end
  private
  def ski_params
    params.permit(:year, :manufacturer, :model, :fleet, :length, :width, :needs_tuned, :ski_shop_id)
  end
end