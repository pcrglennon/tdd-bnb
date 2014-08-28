class City < ActiveRecord::Base
  validates_presence_of :name, :latitude, :longitude
  geocoded_by :name
  before_validation :geocode
end
