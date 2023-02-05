class SkiShop < ApplicationRecord
  has_many :skis
  validates :rents_clothes, inclusion: { in: [true, false] }
  validates_presence_of :name, :location_quantity
end