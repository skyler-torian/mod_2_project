class ItemsController < ApplicationController
    
    before_action :find_item, only:[:show]
    
    
    def index
        @items = Item.all
    end

    def show
        # byebug
        cookies[:item_id] = {value: @item.id}   
    end

    def new
        @item = Item.new

    end

    def create
         #byebug
        @item = current_user.items.create!(item_params.merge({ :user_id => current_user.id}))

        if @item
         redirect_to item_path(@item)
        else
            render :new
        end

    end
    
    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to user_path(current_user)
    end
    
        
        


    private

    def find_item
        @item = Item.find(params[:id])
    end

    def item_params
        params.require(:item).permit!
    end

end
