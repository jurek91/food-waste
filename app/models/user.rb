class User < ApplicationRecord
  validates :username, presence: true, length: {minimum: 5}
  validates :first_name, presence: :true
  validates :email, confirmation: true


end
