require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = FactoryBot.build(:user)
  end
   
  describe 'Validations'  do

    describe 'Valid' do 
      it "is valid with valid attributes" do
        expect(@user).to be_valid
      end
    end

    describe 'Name' do
      it "must have a name" do
        @user.name = nil
        expect(@user).to_not be_valid
      end

      it "must have a unique name" do
        user2 = FactoryBot.build(:user2, name: @user.name)
        expect(user2).to_not be_valid
      end
    end

    describe 'Email' do
      it "must have a valid email"
      it "must have an email" do
        @user.email = nil
        expect(@user).to_not be_valid
      end

      it "must have a unique email" do
        user2 = FactoryBot.build(:user2, name: @user.email)
        expect(user2).to_not be_valid
      end
    end  

  end
end

