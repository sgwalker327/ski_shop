require 'rails_helper'

RSpec.describe 'The skis page' do
  it "shows all of the skis and their attributes" do
    ski_shop = SkiShop.create!(name: "American Ski Exchange", location_quantity: 1, rents_clothes: true)
    ski = ski_shop.skis.create!(fleet: "demo", manufacturer: "Rossignol", model: "BlackOps", year: 2022, length: 192, width: 98, needs_tuned: false)
    visit '/skis'

    expect(page).to have_content("Available at Ski Shop: #{ski.ski_shop_id}")
    expect(page).to have_content(ski.fleet)
    expect(page).to have_content(ski.manufacturer)
    expect(page).to have_content(ski.model)
    expect(page).to have_content(ski.year)
    expect(page).to have_content("Length (cm): #{ski.length}")
    expect(page).to have_content("Width (cm): #{ski.width}")
    expect(page).to have_content("Needs Tuned?: #{ski.needs_tuned}")
  end
end