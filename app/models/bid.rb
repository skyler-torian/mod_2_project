class Bid < ApplicationRecord
    belongs_to :user
    belongs_to :item
    validates :amount, numericality: {greater_than: max_bid}


    def current_price(amount)
        if @bid.amount > @bid.item.price 
            "Current price: $#{@bid.amount}"
        else
            render :new
        end

            

    end
  










end
