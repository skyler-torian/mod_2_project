class BidsController < ApplicationController
  # we need to be able to increase the starting price
  def new
    @bid = Bid.new
  end

  def create
    @bid = Bid.new(bid_params)

    if @bid.amount > @bid.item.price 
      
      @bid.save
      redirect_to item_path(@bid.item_id)
    else
      render :new
    end 
  end


  private 

  def bid_params
    params.require(:bid).permit!
  end

  def finds_bid
    @bid = Bid.find(params[:id])
  end



end
