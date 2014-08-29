require 'rails_helper'

RSpec.describe City, :type => :model do

  let(:city) { FactoryGirl.create :city }

  it 'has a valid factory' do
    expect(city).to be_valid
  end

  it 'is invalid without a name' do
    city = City.new
    expect(city).to_not be_valid
    expect(city.errors.messages.keys).to include(:name)
  end

  describe '#homes' do

    let(:city) { FactoryGirl.create :city_with_homes }

    it 'returns a list of all its homes' do
      expect(city.homes).to_not be_empty
      expect(city.homes.all? { |h| h.is_a?(Home) }).to be true
    end

  end
end
