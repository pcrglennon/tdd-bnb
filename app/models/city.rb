class City < ActiveRecord::Base
  has_many :homes

  validates_presence_of :name
end
