require 'rails_helper'

RSpec.describe RestaurantAddress, type: :model do
  before(:all) do
    @user = FactoryBot.build(:user)
    @restaurant = FactoryBot.build(:restaurant, user: @user)
    @restaurant_address = FactoryBot.build(:restaurant_address, restaurant: @restaurant)
  end
  
  describe 'Validations' do
    describe 'Valid' do
      it "is valid with valid attributes" do
        expect(@restaurant_address).to be_valid
      end
    end

    describe 'Restaurant' do
      it "must belong to a restaurant" do
        expect(@restaurant_address.restaurant).to be_an_instance_of(Restaurant)
      end
    end

    describe 'Street number' do
      it "must have a street number" do
        @restaurant_address.street_number = nil
        expect(@restaurant_address).to_not be_valid
      end
    end

    describe 'Street name' do
      it "must have a street name" do
        @restaurant_address.street_name = nil
        expect(@restaurant_address).to_not be_valid
      end
    end

    describe 'Suburb' do
      it "must have a suburb" do
        @restaurant_address.suburb = nil
        expect(@restaurant_address).to_not be_valid
      end
    end
    
    describe 'Postcode' do
      it "must have a postcode" do
        @restaurant_address.postcode = nil
        expect(@restaurant_address).to_not be_valid
      end
    end

    describe 'State' do
      it "must have a state" do
        @restaurant_address.state = nil
        expect(@restaurant_address).to_not be_valid
      end
    end

    describe 'Longitude' do
      it "must have a longitude" do
        @restaurant_address.longitude = nil
        expect(@restaurant_address).to_not be_valid
      end
    end

    describe 'Latitude' do
      it "must have a latitude" do
        @restaurant_address.latitude = nil
        expect(@restaurant_address).to_not be_valid
      end
    end
  end
end
