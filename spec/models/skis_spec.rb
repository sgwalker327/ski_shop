require "rails_helper"

RSpec.describe Ski do
  describe 'validations' do
    it {should validate_presence_of :fleet}
    it {should validate_presence_of :manufacturer}
    it {should validate_presence_of :model}
    it {should validate_presence_of :year}
    it {should validate_presence_of :length}
    it {should validate_presence_of :width}
    it {should validate_presence_of :needs_tuned}
  end

  describe 'relationships' do
    it {should belong_to :ski_shop}
  end
end