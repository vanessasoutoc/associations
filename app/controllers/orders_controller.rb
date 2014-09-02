class OrdersController < ApplicationController
	before_action :find_order, only: [:show, :edit, :update, :destroy]
	before_action :find_customer, only: [:new, :create]

	def index
	end

	def show
	end

	def new
		@order = Order.new
	end

	def create
		@order = @customer.orders.build(order_params)
		if @order.save
			flash[:success] = "Order created"
			redirect_to @order
		else
			render "new"
		end
	end

	def edit
	end

	def update
		if @order.update_attributes(order_params)
			flash[:success] = "Order updated"
			redirect_to @order
		else
			render "edit"
		end
	end

	def destroy
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

		def find_customer
			@customer = Customer.find(params[:customer_id])
		end

		def find_order
			@order = Order.find(params[:id])
		end

end
