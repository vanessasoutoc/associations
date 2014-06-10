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
  end

  def update
  end

  def delete
  end
end
