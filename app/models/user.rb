class User < ApplicationRecord
    has_many :reviews
    has_many :shops, through: :reviews

    validates :username, presence: true, uniqueness: true
end
