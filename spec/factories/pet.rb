FactoryBot.define do
  factory :pet do
    name { 'helga'}
    breed {'bulldog inglês'}
    gender { 'fêmea'}
    description { 'uma cadela grande e das cores branca e mel'}
    avatar { 'https://static.vecteezy.com/system/resources/previews/001/200/031/non_2x/dog-png.png' }
    association :localization
    user { association :user }
  end
end
