class Restaurant < ApplicationRecord
  has_one :restaurant_address, :dependent => :destroy
  has_many :meals
  belongs_to :user
  validates_presence_of :name
  validates_presence_of :restaurant_address
  validates_presence_of :phone
end
