class Meal < ApplicationRecord
  belongs_to :restaurant
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :price
end
