require 'rails_helper'

RSpec.describe Home, :type => :model do

  let(:home) { FactoryGirl.create :home_with_listings }

  it 'has a valid factory' do
    expect(home).to be_valid
  end

  it 'is invalid without a address' do
    home = Home.new
    expect(home).to_not be_valid
    expect(home.errors.messages.keys).to include(:address)
  end

  describe '#listings' do
    it 'returns a list of all available listings' do
      expect(home.listings).to_not be_empty
    end

    it 'only returns a list of current/upcoming listings' do
      expect(home.listings.all? { |l| l.end_date > Date.today }).to be true
    end
  end

  describe '#destroy' do
    it 'destroys all associated listings as well' do
      home.destroy
      expect(Listing.where(home_id: home.id)).to be_empty
    end
  end

end
