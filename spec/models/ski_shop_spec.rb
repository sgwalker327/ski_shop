require "rails_helper"

RSpec.describe SkiShop do
  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :location_quantity}
    it {should validate_presence_of :rents_clothes}
  end

  describe 'relationships' do
    it {should have_many :skis}
  end
end