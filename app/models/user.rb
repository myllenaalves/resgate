class User < ApplicationRecord
  has_one_attached :file

  has_many :pets
  has_many :posts

  validates :name, presence: true
  validates :email, presence: true
end
