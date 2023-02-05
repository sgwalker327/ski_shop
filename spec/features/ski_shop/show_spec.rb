require 'rails_helper'

RSpec.describe "the ski_shop show page", type: :feature do
  before :each do
    @ski_shop = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
  end
#   As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)
describe "As a visitor" do
  describe "When I visit '/parents/:id'" do
    it "Then I see the parent with that id including the parent's attributes" do
      visit "/ski_shop/#{@ski_shop.id}"

      expect(page).to have_content(@ski_shop.name)
      expect(page).to have_content(@ski_shop.location_quantity)
      expect(page).to have_content(@ski_shop.rents_clothes)
    end
  end
end
end