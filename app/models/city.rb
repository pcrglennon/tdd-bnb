class City < ActiveRecord::Base
  has_many :homes
  has_many :listings, :through => :homes

  validates_presence_of :name

  def listings
    Listing.joins(:home).where("homes.city_id = ?", self.id).where("listings.end_date > ?", Date.today)
  end
end
