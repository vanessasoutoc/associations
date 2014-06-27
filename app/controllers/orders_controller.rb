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
    #@order.date = @order.date.strftime("%Y-%m-%d")
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
			logger.debug "Entered method 'order_params'"
			params.require(:order).permit(:name, :date, :total)
			logger.debug "params[:order][:date] = #{params[:order][:date]}"
			logger.debug "Class of params[:order][:date] = #{params[:order][:date].class}"
			logger.debug DateTime.strptime(params[:order][:date], "%m/%d/%Y").inspect
			logger.debug DateTime.strptime(params[:order][:date], "%m/%d/%Y").strftime("%Y-%m-%d")
			logger.debug DateTime.strptime(params[:order][:date], "%m/%d/%Y").strftime("%Y-%m-%d").class


			params[:order][:date] = DateTime.strptime(params[:order][:date], "%m/%d/%Y").strftime("%Y-%m-%d")
#			params[:order][:date] = DateTime.strptime(params[:order][:date], "%m/%d/%Y").strftime("%Y-%m-%d")
		end

end
