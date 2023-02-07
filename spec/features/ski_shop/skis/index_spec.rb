require 'rails_helper'

RSpec.describe 'The Ski Shop Skis page', type: :feature do
#   As a visitor
# When I visit '/parents/:parent_id/child_table_name'
# Then I see each Child that is associated with that Parent with each Child's attributes
# (data from each column that is on the child table)
  describe "As a visitor" do
    describe "When I visit '/parents/:parent_id/child_table_name'" do
      it "Then I see each Child that is associated with that Parent with each Child's attributes" do
        ase = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
        ski = ase.skis.create!(fleet: "demo", manufacturer: "Armada", model: "ARV 106", year: 2022, length: 172, width: 106, needs_tuned: true)
        visit "/ski_shops/#{ase.id}/skis"
        
        expect(page).to have_content(ase.name)
        expect(page).to have_content(ski.fleet)
        expect(page).to have_content(ski.manufacturer)
        expect(page).to have_content(ski.model)
        expect(page).to have_content(ski.year)
        expect(page).to have_content("Length (cm): #{ski.length}")
        expect(page).to have_content("Width (mm): #{ski.width}")
        expect(page).to have_content("Needs Tuned?: #{ski.needs_tuned}")
        expect(page).to have_content("Available at Ski Shop: #{ski.ski_shop_id}")
        
      end
    end

    describe "When I visit any page on the site" do
      it 'Then I see a link at the top of the page that takes me to the Parent Index' do
        ase = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
        ski = ase.skis.create!(fleet: "demo", manufacturer: "Armada", model: "ARV 106", year: 2022, length: 172, width: 106, needs_tuned: true)
        visit "/ski_shops/#{ase.id}/skis"

        expect(page).to have_link('Ski Shops', href: ski_shops_path)
        click_on 'Ski Shops'
        
        expect(page).to have_current_path('/ski_shops')

      end
    end
  end
end