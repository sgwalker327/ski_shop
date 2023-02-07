require 'rails_helper'

RSpec.describe "the ski_shop show page", type: :feature do
  before :each do
    @ski_shop = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
    @demo = @ski_shop.skis.create!(fleet: "demo", manufacturer: "Armada", model: "ARV 106", year: 2022, length: 172, width: 106, needs_tuned: true)
    @sport = @ski_shop.skis.create!(fleet: "sport", manufacturer: "Rossignol", model: "Experience 80", year: 2018, length: 156, width: 80, needs_tuned: true)
    # require 'pry'; binding.pry
  end
#   As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)
  describe "As a visitor" do
    describe "When I visit '/parents/:id'" do
      it "Then I see the parent with that id including the parent's attributes" do
        visit "/ski_shops/#{@ski_shop.id}"
        expect(page).to have_content(@ski_shop.name)
        expect(page).to have_content(@ski_shop.location_quantity)
        expect(page).to have_content(@ski_shop.rents_clothes)
      end
    end
    # As a visitor
    # When I visit a parent's show page
    # I see a count of the number of children associated with this parent
    describe "When I visit a parent's show page" do
      it 'I see a count of the number of children associated with this parent' do
        visit "/ski_shops/#{@ski_shop.id}"
        
        expect(page).to have_content("Ski Count: #{@ski_count}")
        expect(@ski_shop.skis.count).to eq(2)
      end
    end

    describe "When I visit any page on the site" do
      it 'Then I see a link at the top of the page that takes me to the Child Index' do
        visit "/ski_shops/#{@ski_shop.id}"

        expect(page).to have_link('Skis', href: skis_path)
        click_on 'Skis'

        expect(page).to have_current_path('/skis')

      end
    end

    describe "when I visit a parent show page ('/parents/:id')" do
      it "Then I see a link to take me to that parent's `child_table_name` page" do
        visit "/ski_shops/#{@ski_shop.id}"
        
        expect(page).to have_link("Ski Shop Skis", href: "/ski_shops/#{@ski_shop.id}/skis")

        click_on 'Ski Shop Skis'

        expect(page).to have_current_path("/ski_shops/#{@ski_shop.id}/skis")
      end
    end
  end
end

