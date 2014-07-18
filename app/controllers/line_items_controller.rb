class LineItemsController < ApplicationController
  def new
  	@order = Order.find(params[:order_id])
  	@line_item = LineItem.new
  end

  def create
  	@order = Order.find(params[:order_id])
    @line_item = LineItem.new(line_item_params)
    @line_item.order_id = params[:order_id]
    @line_item.product_id = params[:line_item][:product_id]
		if @line_item.save
      flash[:success] = "Line Item created"
			redirect_to @order
		else
			render "new"
		end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private
  	def line_item_params
			params.require(:line_item).permit(:product_id, :quantity, :discount_percent)
  	end  
end
