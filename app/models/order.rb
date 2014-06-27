class Order < ActiveRecord::Base
	belongs_to :customer

	# Validations
	validates :date, presence: true
end
