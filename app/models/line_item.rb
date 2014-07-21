class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  self.primary_key = :order_id, :product_id

  # Validations
  validates :product_id, presence: true
	validates :quantity,	presence: true,
												numericality: { only_integer: true,
												greater_than_or_equal_to: 1,
												less_than_or_equal_to: 1000000 }
	validates :discount_percent,
												numericality: { only_integer: true,
												greater_than_or_equal_to: 0,
												less_than_or_equal_to: 100 }


  def total
  	product.unit_price * quantity * (1 - (discount_percent / 100.0))
  end
end