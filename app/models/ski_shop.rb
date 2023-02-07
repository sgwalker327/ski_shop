class SkiShop < ApplicationRecord
  has_many :skis
  
  def self.shop_order
    SkiShop.order(created_at: :desc)
  end

  def ski_count
    skis.count
  end
end