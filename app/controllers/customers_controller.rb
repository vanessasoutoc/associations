class CustomersController < ApplicationController
  def index
		@customers = Customer.all
  end

  def show
		@customer = Customer.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
