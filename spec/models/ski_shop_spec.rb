require "rails_helper"

RSpec.describe SkiShop do
  describe 'relationships' do
    it {should have_many :skis}
  end
end