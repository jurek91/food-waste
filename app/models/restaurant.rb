class Restaurant < ApplicationRecord
  has_one :restaurant_address
  has_many :meals
  belongs_to :user
end
