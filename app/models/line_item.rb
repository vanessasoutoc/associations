class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  def price
  	price = product.unit_price * quantity * (1 - (discount_percent / 100))
  end
end