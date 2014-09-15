class Listing < ActiveRecord::Base
  belongs_to :home
  belongs_to :city

  validates_presence_of :home, :start_date, :end_date

  def city
    self.home.city
  end
end
