class SkiShop < ApplicationRecord
  has_many :skis
  
  def ski_count
    skis.count
  end
end