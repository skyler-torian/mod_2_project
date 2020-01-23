class User < ApplicationRecord
    has_secure_password
    has_many :bids
    has_many :items  
    # has_many :items, through: :bids

    validates :username, presence: true, uniqueness: {case_sensitive: false}
    validates :name, presence: true
    
end
