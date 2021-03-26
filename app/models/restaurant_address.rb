class RestaurantAddress < ApplicationRecord
  belongs_to :restaurant
  validates_presence_of :street_number
  validates_presence_of :street_name
  validates_presence_of :suburb
  validates_presence_of :postcode
  validates_presence_of :state
  validates_presence_of :longitude
  validates_presence_of :latitude
end
