require 'rails_helper'

RSpec.describe "cities/new", :type => :view do
  before(:each) do
    assign(:city, City.new(
      :name => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders new city form" do
    render

    assert_select "form[action=?][method=?]", cities_path, "post" do

      assert_select "input#city_name[name=?]", "city[name]"

      assert_select "input#city_latitude[name=?]", "city[latitude]"

      assert_select "input#city_longitude[name=?]", "city[longitude]"
    end
  end
end
