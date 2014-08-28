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

  it 'is invalid without a latitude' do
    city = City.new
    expect(city).to_not be_valid
    expect(city.errors.messages.keys).to include(:latitude)
  end

  it 'is invalid without a longitude' do
    city = City.new
    expect(city).to_not be_valid
    expect(city.errors.messages.keys).to include(:longitude)
  end

  it 'automatically creates a latitude/longitude from the name' do
    expect(city.latitude).to_not be_nil
    expect(city.longitude).to_not be_nil
  end
end
