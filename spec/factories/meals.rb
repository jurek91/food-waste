FactoryBot.define do
  factory :meal do
    restaurant { "" }
    name { "MyString" }
    description { "MyString" }
    price { 1.5 }
  end
end
