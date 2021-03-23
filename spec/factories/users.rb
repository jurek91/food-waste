FactoryBot.define do
  factory :user do
    username { "MyString" }
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    location { "MyString" }
    age { 1 }
    private_person { false }
  end
end
