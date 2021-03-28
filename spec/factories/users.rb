FactoryBot.define do
    factory :user do
      name { 'Sunny' }
      email { "test@email.com" }
      password { "password" }
    end

    factory :user2, class: "User" do
        name { 'Rainy' }
        email { "anothertest@email.com" }
        password { "password" }
      end
  end
  