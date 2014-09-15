require 'rails_helper'

RSpec.describe Listing, :type => :model do

  let (:listing) { FactoryGirl.create :listing }

  it 'has a valid factory' do
    expect(listing).to be_valid
  end

  it 'is associated with a city' do
    expect(listing.city).to_not be_nil
  end

  describe 'status' do
    let (:expired_listing) { FactoryGirl.create :expired_listing }
    let (:current_listing) { FactoryGirl.create :current_listing }
    let (:upcoming_listing) { FactoryGirl.create :upcoming_listing }

    it 'expired if end_date has passed' do
      expect(expired_listing).to be_expired
    end

    it 'current if start date has passed but end_date is upcoming' do
      expect(current_listing).to be_current
    end

    it 'upcoming if start_date is upcoming' do
      expect(upcoming_listing).to be_upcoming
    end
  end

  describe 'validations' do

    let(:empty_listing) { Listing.new }

    it 'is invalid without an associated home' do
      expect(empty_listing).to_not be_valid
      expect(empty_listing.errors.messages.keys).to include(:home)
    end

    it 'is invalid without a start date' do
      expect(empty_listing).to_not be_valid
      expect(empty_listing.errors.messages.keys).to include(:start_date)
    end

    it 'is invalid without a end date' do
      expect(empty_listing).to_not be_valid
      expect(empty_listing.errors.messages.keys).to include(:end_date)
    end
  end
end
