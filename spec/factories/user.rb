FactoryBot.define do
  factory :user do
    name      { FFaker::Name }
    email     { FFaker::Internet.email }
    password  { FFaker::Internet.password }
    phone     { FFaker::PhoneNumberBR }
  end
end
