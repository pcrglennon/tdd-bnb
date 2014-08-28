require 'rails_helper'

RSpec.describe "cities/edit", :type => :view do
  before(:each) do
    @city = assign(:city, City.create!(
      :name => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit city form" do
    render

    assert_select "form[action=?][method=?]", city_path(@city), "post" do

      assert_select "input#city_name[name=?]", "city[name]"

      assert_select "input#city_latitude[name=?]", "city[latitude]"

      assert_select "input#city_longitude[name=?]", "city[longitude]"
    end
  end
end
