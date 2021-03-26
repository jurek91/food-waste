require 'rails_helper'

RSpec.describe Meal, type: :model do
  before(:all) do
    @restaurant = FactoryBot.build(:restaurant)
    @meal = FactoryBot.build(:meal, restaurant: @restaurant)
  end
  
  describe 'Validations' do
    
    describe 'Valid' do
      it "is valid with valid attributes" do
        expect(@meal).to be_valid
      end
    end

    describe 'Restaurant' do
      it "must belong to a restaurant" do
        expect(@meal.restaurant).to be_an_instance_of(Restaurant)
      end
    end

    describe 'Name' do
      it "must have a name" do
        @meal.name = nil
        expect(@meal).to_not be_valid
      end
    end

    describe 'Description' do
      it "must have a description" do
        @meal.description = nil
        expect(@meal).to_not be_valid
      end
    end
    
    describe 'Price' do
      it "must have a price" do
        @meal.price = nil
        expect(@meal).to_not be_valid
      end
    end
  end
end
