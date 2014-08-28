class Property < ActiveRecord::Base
  belongs_to :city

  validates_presence_of :address, :latitude, :longitude
  geocoded_by :address
  before_validation :geocode
end
