require 'rails_helper'

RSpec.describe "cities/index", :type => :view do
  before(:each) do
    assign(:cities, [
      City.create!(
        :name => "Name",
        :latitude => 1.5,
        :longitude => 1.5
      ),
      City.create!(
        :name => "Name",
        :latitude => 1.5,
        :longitude => 1.5
      )
    ])
  end

  it "renders a list of cities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
