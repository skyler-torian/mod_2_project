class ItemsController < ApplicationController
    
    before_action :find_item, only:[:show]
    
    
    def index
        @items = Item.all
    end

    def show
  
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
