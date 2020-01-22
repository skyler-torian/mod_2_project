class Item < ApplicationRecord
    has_many :user_items
    has_many :bids
    has_many :users, through: :bids
    has_many :users, through: :user_items
    validates :name, presence: true
    validates :desc, presence: true
    validates :price, presence: true, numericality: {greater_than:0}


    # we want to see ...
    # if the user amount is > the current bidding price
    def bids_greater_than_current_price
        if self.bids.any?
           self.bids.select do |bid|
             bid.amount > self.price
            end
        else 
            nil
        end
    end

    def max_bid
        if self.bids_greater_than_current_price
            bids_greater_than_current_price.max_by do |bid|
                bid.amount
            end 
        else
            nil
        end
    end
    
    def max_bid_amount
        self.max_bid.amount
    end

    


end
