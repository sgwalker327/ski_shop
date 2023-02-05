require 'rails_helper'

RSpec.describe 'the ski_shop index page', type: :feature do
  before :each do
    @ski_shop = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
    @christy = SkiShop.create!(name: "Christy Sports", location_quantity: 68, rents_clothes: false)
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
    # As a visitor
    # When I visit the parent index,
    # I see that records are ordered by most recently created first
    # And next to each of the records I see when it was created
    describe 'When I visit the parent index' do
      it 'I see that records are ordered by most recently created first' do
        visit '/ski_shop'
        
        expect(@christy.name).to appear_before(@ski_shop.name)
      end

      it 'And next to each of the records I see when it was created' do
        visit '/ski_shop'

        expect(page).to have_content("#{@christy.name} #{@christy.created_at}")
        expect(page).to have_content("#{@ski_shop.name} #{@ski_shop.created_at}")
      end
    end
  end
  
end