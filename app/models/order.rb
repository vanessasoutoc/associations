class Order < ActiveRecord::Base
	belongs_to :customer

	# Validations
	validates :name, presence: true, length: { maximum: 50 }
	validates :date, presence: true
	validates :total, presence: true,
										numericality: { greater_than_or_equal_to: 0 }
										#, format: { with: /\A(\d+)(\.)?\d{0,2}?\z }
end
