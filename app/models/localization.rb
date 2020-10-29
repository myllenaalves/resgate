class Localization < ApplicationRecord
  has_one :pet

  validates :latitude, presence: true
  validates :longitude, presence: true
end
