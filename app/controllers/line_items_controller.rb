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
  	@line_item = LineItem.find(composite_key)
  end

  def update
  	@line_item = LineItem.find(composite_key)
    if @line_item.update_attributes(line_item_params)
      flash[:success] = "Line item updated"
      redirect_to order_path(@line_item.order_id)
    else
      render "edit"
    end
  end

  def destroy
  	@line_item = LineItem.find(composite_key)
  	order_id = @line_item.order_id
		@line_item.destroy
		flash[:success] = "Line item deleted."
    redirect_to order_path(order_id)
  end


  private
  	def line_item_params
			params.require(:line_item).permit(:product_id, :quantity, :discount_percent)
  	end

  	def composite_key
	  	params[:id].split(',').map { |x| x.to_i }
  	end
end
