class ProductsController < ApplicationController
	helper_method :sort_column, :sort_direction

	def index
		@products = Product.order(sort_column + " " + sort_direction)
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

		def sort_column
			%w[name upc].include?(params[:sort]) ? params[:sort] : "name"
		end

		def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end
end
