require 'rails_helper'

RSpec.describe Property, :type => :model do

  let(:property) { FactoryGirl.create :property }

  it 'has a valid factory' do
    expect(property).to be_valid
  end

  it 'is invalid without a address' do
    property = Property.new
    expect(property).to_not be_valid
    expect(property.errors.messages.keys).to include(:address)
  end

  it 'is invalid without a latitude' do
    property = Property.new
    expect(property).to_not be_valid
    expect(property.errors.messages.keys).to include(:latitude)
  end

  it 'is invalid without a longitude' do
    property = Property.new
    expect(property).to_not be_valid
    expect(property.errors.messages.keys).to include(:longitude)
  end

  it 'automatically creates a latitude/longitude from the name' do
    expect(property.latitude).to_not be_nil
    expect(property.longitude).to_not be_nil
  end

end
