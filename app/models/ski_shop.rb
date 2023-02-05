class SkiShop < ApplicationRecord
  has_many :skis
  validates_presence_of :name, :location_quantity, :rents_clothes
end