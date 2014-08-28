class City < ActiveRecord::Base
  has_many :properties

  validates_presence_of :name, :latitude, :longitude
  geocoded_by :name
  before_validation :geocode
end
