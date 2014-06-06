class CustomersController < ApplicationController
  before_action :signed_in_user
  
  def index
		@customers = Customer.all
  end

  def show
		@customer = Customer.find(params[:id])
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
		@customer = Customer.find(params[:id])
  end

  def update
		@customer = Customer.find(params[:id])
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
end
