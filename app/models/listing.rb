class Listing < ActiveRecord::Base
  belongs_to :home
  belongs_to :city
end
