FactoryBot.define do
  factory :address do
    restaurant { nil }
    unit_number { 1 }
    street_number { 1 }
    street_name { "MyString" }
    council { "MyString" }
    suburb { "MyString" }
    postcode { 1 }
    state { "MyString" }
    longitude { 1.5 }
    latitude { 1.5 }
  end
end
