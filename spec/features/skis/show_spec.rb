require 'rails_helper'

RSpec.describe "the ski show page", type: :feature do
  before :each do
    ski_shop = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
    @ski = ski_shop.skis.create!(fleet: "demo", manufacturer: "Rossignol", model: "BlackOps", year: 2022, length: 192, width: 98, needs_tuned: true)
  end
  # As a visitor
  # When I visit '/child_table_name/:id'
  # Then I see the child with that id including the child's attributes
  # (data from each column that is on the child table)
describe "As a visitor" do
  describe "When I visit '/child_table_name/:id'" do
    it "Then I see the child with that id including the child's attributes" do
      visit "/skis/#{@ski.id}"

      expect(page).to have_content(@ski.year)
      expect(page).to have_content(@ski.manufacturer)
      expect(page).to have_content(@ski.model)
      expect(page).to have_content(@ski.fleet)
      expect(page).to have_content("Length (cm): #{@ski.length}")
      expect(page).to have_content("Width (mm): #{@ski.width}")
      expect(page).to have_content("Needs Tuned?: #{@ski.needs_tuned}")
      expect(page).to have_content("Available at Ski Shop: #{@ski.ski_shop_id}")
    end
  end
end
end