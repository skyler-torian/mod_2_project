class Item < ApplicationRecord
    has_many :user_items
    has_many :bids
    has_many :users, through: :bids
    has_many :users, through: :user_items
end
