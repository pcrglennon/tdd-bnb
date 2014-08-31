class Home < ActiveRecord::Base
  belongs_to :city
  has_many :listings, :dependent => :destroy

  validates_presence_of :address

  def listings
    Listing.where(home_id: self.id).where("listings.end_date > ?", Date.today)
  end
end
