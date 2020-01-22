class ItemsController < ApplicationController
    
    before_action :find_item, only:[:show]
    
    
    def index
        @items = Item.all
    end

    def show
        # if @item.bids.any?
        #     @new_array = @item.bids.select do |bid|
        #         bid.amount > @item.price
        #     end
        #     @max = @new_array.max_by do |bid|
        #      bid.amount
        #     end 
        # else 
        #     "currently no bids"
        # end
  
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
        if @item.valid?
         @item.save
         redirect_to item_path(@item)
        else
            render :new
        end
       
         
        
    end
        


    private

    def find_item
        @item = Item.find(params[:id])
    end

    def item_params
        params.require(:item).permit!
    end

end
