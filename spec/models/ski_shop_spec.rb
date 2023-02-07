require "rails_helper"

RSpec.describe SkiShop do
  describe 'relationships' do
    it {should have_many :skis}
  end

  describe '#shop_order' do
    it 'order records from most recently created to least' do
      ski_shop = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
      christy = SkiShop.create!(name: "Christy Sports", location_quantity: 68, rents_clothes: false)
      # require 'pry'; binding.pry
      expect(SkiShop.shop_order).to eq([christy, ski_shop])
    end
  end

  describe '#ski_count' do
    it 'gives the child count for each parent' do
      ase = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
      christy = SkiShop.create!(name: "Christy Sports", location_quantity: 68, rents_clothes: false)
      ase.skis.create!(fleet: "demo", manufacturer: "Armada", model: "ARV 106", year: 2022, length: 172, width: 106, needs_tuned: true)
      ase.skis.create!(fleet: "sport", manufacturer: "Rossignol", model: "Experience 80", year: 2018, length: 156, width: 80, needs_tuned: true)
      christy.skis.create!(fleet: "sport", manufacturer: "Rossignol", model: "Experience 80", year: 2018, length: 156, width: 80, needs_tuned: true)

      expect(christy.ski_count).to eq(1)
      expect(ase.ski_count).to eq(2)
    end
  end
end