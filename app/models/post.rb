class Post < ApplicationRecord
  belongs_to :user
  
  validates :description, presence: true
  validates :photo, presence: true
  validates :title, presence: true
end
