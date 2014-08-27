class OrdersController < ApplicationController
	before_action :signed_in_user
	
	def index
	end

	def show
		@order = Order.find(params[:id])
	end

	def new
		@customer = Customer.find(params[:customer_id])
		@order = Order.new
	end

	def create
		@customer = Customer.find(params[:customer_id])
		@order = Order.new(order_params)
		@order.customer_id = params[:customer_id]
		if @order.save
			flash[:success] = "Order created"
			redirect_to @order
		else
			render "new"
		end
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

	def destroy
		@order = Order.find(params[:id])
		@customer = Customer.find(@order.customer_id)
		@order.destroy
		flash[:success] = "Order deleted."
		redirect_to customer_path(@customer)
	end
	
	private
		def order_params
			# This method is called before the validations, so verify date is not blank for new Order
			unless params[:order][:date].blank?
				params[:order][:date] = DateTime.strptime(params[:order][:date], "%m/%d/%Y").strftime("%Y-%m-%d")
			end
			params.require(:order).permit(:description, :date, :total)
		end

end
