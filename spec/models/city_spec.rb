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

  describe '#properties' do

    let(:city) { FactoryGirl.create :city_with_properties }

    it 'returns a list of all its properties' do
      expect(city.properties).to_not be_empty
    end

  end
end
