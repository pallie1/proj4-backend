class User < ApplicationRecord
    has_many :reviews
    has_many :shops, through: :reviews

    validates :username, presence: true, uniqueness: true

    before_save :format_username

    # def format_username
    #     self.username = self.username.delete(" ").downcase
    # end

end
