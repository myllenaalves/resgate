FactoryBot.define do
  factory :localization do
    latitude {  FFaker::Geolocation.lat }
    longitude {  FFaker::Geolocation.lng }
  end
end
