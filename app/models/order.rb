class Order < ActiveRecord::Base
	belongs_to :customer
	has_many :line_items, dependent: :destroy
	has_many :products, through: :line_items

	# Validations
	validates :description, presence: true, length: { maximum: 50 }
	validates :date, presence: true
	# Since the total is now calculated, this validation is no longer necessary
	#validates :total, presence: true,
	#									numericality: { greater_than_or_equal_to: 0 },
	#									format: { with: /\A\d+(\.\d{1,2})?\z/i }
										# TODO: Format below should handle commas, but doesn't.  Research.
										# Currency amount (cents optional) Optional thousands separators; optional two-digit fraction
										#format: { with: /\A[0-9]{1,3}(?:,?[0-9]{3})*(?:\.[0-9]{2})?\z/i }

	def total
		sum = 0
		line_items.each do |line_item|
			sum += line_item.total
		end
		return sum
	end
end
