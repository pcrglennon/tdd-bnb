require 'rails_helper'

RSpec.describe Home, :type => :model do

  let(:home) { FactoryGirl.create :home }

  it 'has a valid factory' do
    expect(home).to be_valid
  end

  it 'is invalid without a address' do
    home = Home.new
    expect(home).to_not be_valid
    expect(home.errors.messages.keys).to include(:address)
  end

end
