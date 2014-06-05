# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# NOTE: db:reset appears to call this file also.
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
customers = Customer.create([
	{ name: "person1", street: "123 Main St.", city: "Dallas", state: "Texas", zipcode: "75234", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "person1@example.com" },
	{ name: "person2", street: "456 Elm St.", city: "Austin", state: "Texas", zipcode: "78610", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "person2@example.com" },
	{ name: "person3", street: "234 Broadway Ave.", city: "Ft. Worth", state: "Texas", zipcode: "76006", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "person3@example.com" },
	{ name: "person4", street: "345 Northwood Rd.", city: "Denver", state: "Colorado", zipcode: "80012", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "person4@example.com" },
	{ name: "person5", street: "567 Kirkwood Ln.", city: "Louisville", state: "Colorado", zipcode: "80027", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "person5@example.com" },
	{ name: "person6", street: "789 Lilac Circle", city: "Boulder", state: "Colorado", zipcode: "80304", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "person6@example.com" }
	])
customers.each do |customer|
   orders = customer.orders.create( [ { order_name: "First Order", order_date: Time.now }, { order_name: "Second Order", order_date: Time.now }, { order_name: "Third Order", order_date: Time.now } ] )
end
User.create(name: "admin", email: "admin@example.com", password: "zxcvbnm", password_confirmation: "zxcvbnm")
