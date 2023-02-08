require 'rails_helper'

RSpec.describe 'Ski Shop edit page' do

  it 'can edit the Ski Shop and redirect to the Ski Shop show page w/ updated content' do
    ski_shop = SkiShop.create!(name: "American Ski Exhange", location_quantity: 1, rents_clothes: true)
    visit '/ski_shops'

    expect(page).to have_content("American Ski Exhange")
    
    visit "/ski_shops/#{ski_shop.id}/edit"

    fill_in('Name', with: "American Ski Exchange")
    fill_in('Location Quantity:', with: 1)
    fill_in('Rents Clothes?', with: true)

    click_button 'Submit'

    expect(current_path).to eq("/ski_shops/#{ski_shop.id}")
    expect(page).to have_content("American Ski Exchange")
  end


  end