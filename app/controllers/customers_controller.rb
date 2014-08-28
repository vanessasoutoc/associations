class CustomersController < ApplicationController
	before_action :find_customer, only: [:show, :edit, :update]

	def index
		@customers = Customer.all
	end

	def show
	end

	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.new(customer_params)
		if @customer.save
			flash[:success] = "Customer created"
			redirect_to @customer
		else
			render "new"
		end
	end

	def edit
	end

	def update
		if @customer.update_attributes(customer_params)
			flash[:success] = "Customer updated"
			redirect_to @customer
		else
			render "edit"
		end
	end

	def destroy
		Customer.find(params[:id]).destroy
		flash[:success] = "Customer deleted."
		redirect_to customers_path
	end
	
	private
		def customer_params
			params.require(:customer).permit(:name, :street, :city, :state, :zipcode, :home_phone, :work_phone, :email)
		end

		def find_customer
			@customer = Customer.find(params[:id])
		end
end
