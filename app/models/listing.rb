class Listing < ActiveRecord::Base
  belongs_to :home
  belongs_to :city

  validates_presence_of :home, :start_date, :end_date

  def city
    self.home.city
  end

  def expired?
    self.end_date <= Date.today
  end

  def current?
    self.start_date <= Date.today && self.end_date > Date.today
  end

  def upcoming?
    self.start_date > Date.today
  end
end
