class OrdersController < ApplicationController

  def index

  end


  def create
    @orders_input = params[:orders]
    @order = Order.new(order_params)   

    if @order.save
      render action: 'index'
    else
      @error = @order.errors.full_messages.first
    end

  end  

  private
  def order_params
    params.require(:order).permit(:orders_input, :name, :phone, :address)
  end   

end
