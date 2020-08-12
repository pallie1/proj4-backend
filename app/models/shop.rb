class Shop < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    validates :address, presence: true, uniqueness: true
    validates :rate, presence: true
    validates :content, presence: true
end
