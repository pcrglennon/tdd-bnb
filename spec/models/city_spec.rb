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

  describe 'homes and listings' do

    let(:city) { FactoryGirl.create :city_with_homes_and_listings }

    describe '#homes' do

      let(:homes) { city.homes }

      it 'returns a list of all its homes' do
        expect(homes).to_not be_empty
      end
    end

    describe '#listings' do

      let(:listings) { city.listings }

      it 'returns a list of all available listings' do
        expect(listings).to_not be_empty
      end

      it 'only returns a list of current/upcoming listings' do
        expect(listings.all? { |l| l.end_date > Date.today }).to be true
      end
    end

  end

end
