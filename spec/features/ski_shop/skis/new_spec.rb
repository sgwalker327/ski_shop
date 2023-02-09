require 'rails_helper'

RSpec.describe 'new ski page' do
  describe 'Ski attribute input and submission' do
    it 'has a view of a form to create a new child for the parent' do
      @ski_shop = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
      visit "/ski_shops/#{@ski_shop.id}/skis/new"

      expect(page).to have_content("Create A New Ski for #{@ski_shop.name}")
      expect(page).to have_field("Year:")
      expect(page).to have_field("Manufacturer:")
      expect(page).to have_field("Model:")
      expect(page).to have_field("Fleet:")
      expect(page).to have_field("Ski Length:")
      expect(page).to have_field("Ski Width:")
      expect(page).to have_field("Ski Needs Tuned?")
    end
  end
  describe 'When I fill in the ski attributes and click "Create Ski"' do
    it 'I am redirected to the Ski Shop Ski index and can see the new child' do
      @ski_shop = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
      visit "/ski_shops/#{@ski_shop.id}/skis/new"

      fill_in('Year', with: '2022')
      fill_in('Manufacturer', with: 'Armada')
      fill_in('Model', with: 'ARV 106')
      fill_in('Fleet', with: 'Demo')
      fill_in('Ski Length', with: 172)
      fill_in('Ski Width', with: 106)
      fill_in('Ski Needs Tuned', with: 'false')

      click_on 'Create Ski'

      expect(current_path).to eq("/ski_shops/#{@ski_shop.id}/skis")
      expect(page).to have_content('2022')
      expect(page).to have_content('Armada')
      expect(page).to have_content('ARV 106')
      expect(page).to have_content('Demo')
      expect(page).to have_content(172)
      expect(page).to have_content(106)
      expect(page).to have_content('false')
    end
  end
end