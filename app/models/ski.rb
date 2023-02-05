class Ski < ApplicationRecord
  belongs_to :ski_shop
  validates_presence_of :fleet, :manufacturer, :model, :year, :length, :width, :needs_tuned
end