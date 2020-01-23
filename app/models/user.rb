class User < ApplicationRecord
    has_secure_password
    has_many :bids
    has_many :items  
    # has_many :items, through: :bids

    validates :username, presence: true, uniqueness: {case_sensitive: false}
    validates :name, presence: true
# gets the users bids


    def latest_bids
        self.bids.group(:item_id)
    end

    



    # def user_bids
    #     self.bids.map do |bid|
    #         bid
    #     end
    # end


    # # i need a users highest bid amount for a specific item
    

    # def user_max_bid
    #     user_bids.max_by do |bid|
    #         bid.amount
    #     end
    # end

    # def user_max_bid_amount
    #     # byebug
    #     user_max_bid.amount
    # end
    
    # # gets the users item that they bidded on object
    
    # def user_bids_item
    #     self.bids.map do |bid|
    #         bid.item
    #     end
 
    # end

    # #    gets the name of the item n

    # def user_bid_item_name
    #     user_bids_item.map do |item|
    #         item.name
    #     end.uniq
    # end

    

    # def item_name
    #     user_bid_item_name_uniq.each do  |item|
    #         return item
    #     end
    # end




end
