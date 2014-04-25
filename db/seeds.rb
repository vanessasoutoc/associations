# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# NOTE: db:reset appears to call this file also.
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
customers = Customer.create([
	{ name: "George Washington", street: "123 Main St.", city: "Dallas", state: "TX", zipcode: "75234", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "George.Washington@example.com" },
	{ name: "John Adams", street: "456 Elm St.", city: "Austin", state: "TX", zipcode: "78610", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "John.Adams@example.com" },
	{ name: "Thomas Jefferson", street: "234 Broadway Ave.", city: "Ft. Worth", state: "TX", zipcode: "76006", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "Thomas.Jefferson@example.com" },
	{ name: "Abraham Lincoln", street: "345 Northwood Rd.", city: "Denver", state: "CO", zipcode: "80012", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "Abraham.Lincoln@example.com" },
	{ name: "Theodore Roosevelt", street: "567 Kirkwood Ln.", city: "Louisville", state: "CO", zipcode: "80027", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "Theodore.Roosevelt@example.com" },
	{ name: "Barrack Obama", street: "789 Lilac Circle", city: "Boulder", state: "CO", zipcode: "80304", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "Barrack.Obama@example.com" }
	])
customers.each do |customer|
   orders = customer.orders.create( [ { order_date: Time.now }, { order_date: Time.now }, { order_date: Time.now } ] )
end
