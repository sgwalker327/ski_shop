require 'rails_helper'

RSpec.describe 'new ski_shop creation page', type: :feature do
  it 'has a form to create a new parent' do
    visit '/ski_shops/new'

    expect(page).to have_content("New Ski Shop Form")
    expect(page).to have_field("Name")
    expect(page).to have_field("Location Quantity:")
    expect(page).to have_content("Rents Clothes?:")
  end

  describe 'When I fill out the form and click "Create Ski Shop" it creates a new Ski Shop' do
    it 'redirects to the ski shop index page and contains new content' do
    visit '/ski_shops/new'
    fill_in('Name', with: "Troy's Ski Shop")
    fill_in('Location Quantity:', with: 1)
    fill_in('Rents Clothes?', with: false)
    click_button('Create Ski Shop')

    expect(current_path).to eq('/ski_shops')
    expect(page).to have_content("Troy's Ski Shop")
    end
  end
end