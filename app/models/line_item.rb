class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  self.primary_key = :order_id, :product_id
#  self.primary_key = [:order_id, :product_id]

  def price
  	price = product.unit_price * quantity * (1 - (discount_percent / 100))
  end
end