require 'rails_helper'

RSpec.describe 'The skis index page', type: :feature do
 
  describe "As a visitor" do
    describe "When I visit '/child_table_name'" do
      it "Then I see each Child in the system including the Child's attributes" do
        ski_shop = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
        ski = ski_shop.skis.create!(fleet: "demo", manufacturer: "Rossignol", model: "BlackOps", year: 2022, length: 192, width: 98, needs_tuned: true)
        visit '/skis'

        expect(page).to have_content("Available at Ski Shop: #{ski.ski_shop_id}")
        expect(page).to have_content(ski.fleet)
        expect(page).to have_content(ski.manufacturer)
        expect(page).to have_content(ski.model)
        expect(page).to have_content(ski.year)
        expect(page).to have_content("Length (cm): #{ski.length}")
        expect(page).to have_content("Width (mm): #{ski.width}")
        expect(page).to have_content("Needs Tuned?: #{ski.needs_tuned}")
      end
    end

    describe "When I visit any page on the site" do
      it 'Then I see a link at the top of the page that takes me to the Child Index' do
        visit "/skis"

        expect(page).to have_link('Skis', href: skis_path)
        click_on 'Skis'
        
        expect(page).to have_current_path('/skis')

      end
    end
  end
end