require 'rails_helper'

RSpec.describe 'the ski_shop index page', type: :feature do
  before :each do
    @ski_shop = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
  end
#   For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system
  describe 'As a visitor' do
    describe "When I visit '/parents'" do
      it 'Then I see the name of each parent record in the system' do
        visit '/ski_shop'

        expect(page).to have_content(@ski_shop.name)
      end
    end
  end
end