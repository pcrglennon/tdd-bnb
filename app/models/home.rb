class Home < ActiveRecord::Base
  belongs_to :city

  validates_presence_of :address
end
