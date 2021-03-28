class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :restaurants
  has_one :shopping_cart
  has_many :orders

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_uniqueness_of :email
  # ORDER MODEL TO BE GENERATED
end
