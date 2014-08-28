require 'rails_helper'

RSpec.describe City, :type => :model do
  let(:city) { FactoryGirl.create :city }
  it 'has a valid factory' do
    expect(city).to be_valid
  end

  it 'is invalid without a name' do
    city = City.new
    expect(city).to_not be_valid
  end
end
