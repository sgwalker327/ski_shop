require "rails_helper"

RSpec.describe Ski do
  describe 'relationships' do
    it {should belong_to :ski_shop}
  end
end