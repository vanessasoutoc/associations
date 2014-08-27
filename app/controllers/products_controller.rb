class ProductsController < ApplicationController
	before_action :signed_in_user
	
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			flash[:success] = "Product created"
			redirect_to @product
		else
			render "new"
		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update_attributes(product_params)
			flash[:success] = "Product updated"
			redirect_to @product
		else
			render "edit"
		end
	end

	def destroy
		Product.find(params[:id]).destroy
		flash[:success] = "Product deleted."
		redirect_to products_path
	end

	private
		def product_params
			params.require(:product).permit(:name, :description, :upc, :unit_price, :inventory_qty)
		end
end
