FactoryBot.define do
  factory :user do
    name { Faker::Lorem.characters(number:4) }
    email { Faker::Internet.email }
    bio { Faker::Lorem.characters(number:20) }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
