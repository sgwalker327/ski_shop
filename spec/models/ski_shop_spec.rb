require "rails_helper"

RSpec.describe SkiShop, type: :model do
  it {should have_many :skis}
      
   end
end