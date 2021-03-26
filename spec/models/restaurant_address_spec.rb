require 'rails_helper'

RSpec.describe RestaurantAddress, type: :model do
  it "must belong to a restaurant"
  it "must have a street number"
  it "must have a street name"
  it "must have a suburb"
  it "must have a postcode"
  it "must have a state"
  it "must have a longitude"
  it "must have a latitude"
end
