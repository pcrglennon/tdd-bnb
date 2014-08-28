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

end
