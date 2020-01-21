class User < ApplicationRecord
    has_many :user_items
    has_many :bids
    has_many :items, through: :bids
    has_many :items, through: :user_items
    validates :username, presence: true, uniqueness: {case_sensitive: false}
    validates :name, presence: true
    
end
