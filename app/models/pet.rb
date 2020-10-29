class Pet < ApplicationRecord
  belongs_to :localization
  belongs_to :user
  
  validates :name, presence: true
  validates :breed, presence: true
  validates :gender, presence: true
  validates :description, presence: true
  validates :avatar, presence: true
end
