class BidsController < ApplicationController
  # we need to be able to increase the starting price
  def new
    
    @bid = Bid.new
  end

  def create
        @bid = current_user.bids.create!(bid_params.merge({ :user_id => current_user.id, :item_id => cookies[:item_id] }))


    if @bid
      # byebug
      redirect_to item_path(@bid.item_id)
    else
      render :new
    end 
  end

  def destroy
    # byebug

    @bids = Bid.where(user_id: current_user.id, item_id: params[:id] )    # @bid = Bid.find(params[:id])
    @bids.destroy_all
    redirect_to user_path(current_user)
  end




  private 


  def bid_params
    params.require(:bid).permit!
  end

  def finds_bid
    @bid = Bid.find(params[:id])
  end



end
