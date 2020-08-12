class Review < ApplicationRecord
  belongs_to :shop
  belongs_to :user

  validates :rate, presence: true
  validates :content, presence: true
end
