require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it "must belong to a user"
  it "must have an address"
  it "must have its address be an instance of Address"
  it "must have a name"
  it "must have a phone number"
end
