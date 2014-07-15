class Order < ActiveRecord::Base
	belongs_to :customer
	has_and_belongs_to_many :products

	# Validations
	validates :description, presence: true, length: { maximum: 50 }
	validates :date, presence: true
	validates :total, presence: true,
										numericality: { greater_than_or_equal_to: 0 },
										format: { with: /\A\d+(\.\d{1,2})?\z/i }
										# TODO: Format below should handle commas, but doesn't.  Research.
										# Currency amount (cents optional) Optional thousands separators; optional two-digit fraction
										#format: { with: /\A[0-9]{1,3}(?:,?[0-9]{3})*(?:\.[0-9]{2})?\z/i }
end
