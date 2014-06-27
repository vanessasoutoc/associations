class OrdersController < ApplicationController
  before_action :signed_in_user
  
  def index
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update_attributes(order_params)
      flash[:success] = "Order updated"
      redirect_to @order
    else
      render "edit"
    end
  end

  def delete
  end
	
	private
		def order_params
			params[:order][:date] = DateTime.strptime(params[:order][:date], "%m/%d/%Y").strftime("%Y-%m-%d")
			params.require(:order).permit(:name, :date, :total)
		end

end
