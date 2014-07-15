class Product < ActiveRecord::Base
	has_and_belongs_to_many :orders

	# Validations
	validates :name, presence: true, length: { maximum: 30 }
	validates :description, length: { maximum: 255 }
	validates :upc, presence: true,
									uniqueness: true,
									numericality: { only_integer: true, greater_than_or_equal_to: 0 },
									length: { is: 12 }
	validates :unit_price,	presence: true,
													numericality: { greater_than_or_equal_to: 0 },
													format: { with: /\A\d+(\.\d{1,2})?\z/i }
	validates :inventory_qty,	presence: true,
														numericality: { greater_than_or_equal_to: 0 }
end
