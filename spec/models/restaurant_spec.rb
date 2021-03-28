require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  before(:all) do
    @user = FactoryBot.build(:user)
    @restaurant = FactoryBot.build(:restaurant, user: @user)
    @restaurant_address =  FactoryBot.build(:restaurant_address, restaurant: @restaurant)
    @restaurant.restaurant_address = @restaurant_address
  end
  describe 'Associations' do
    
  end

  describe 'Validations' do
    
    describe 'Valid' do
      it "is valid with valid attributes" do
        expect(@restaurant).to be_valid
      end
    end

    describe 'Address' do
      it "must have an address" do
        @restaurant.restaurant_address = nil
        expect(@restaurant).to_not be_valid
      end
    end

    describe 'User' do
      it "must belong to a user" do
        expect(@restaurant.user).to be_an_instance_of(User)
      end
    end

    describe 'Name' do
      it "must have a name" do
        @restaurant.name = nil
        expect(@restaurant).to_not be_valid
      end
    end
    
    describe 'Phone number' do
      it "must have a phone number" do
        @restaurant.phone = nil
        expect(@restaurant).to_not be_valid
      end
    end
  end
end
