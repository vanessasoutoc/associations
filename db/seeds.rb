# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# NOTE: db:reset appears to call this file also.
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Customers
customers = Customer.create([
	{ name: "customer1", street: "123 Main St.", city: "Dallas", state: "Texas", zipcode: "75234", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer1@example.com" },
	{ name: "customer2", street: "456 Elm St.", city: "Austin", state: "Texas", zipcode: "78610", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer2@example.com" },
	{ name: "customer3", street: "234 Broadway Ave.", city: "Ft. Worth", state: "Texas", zipcode: "76006", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer3@example.com" },
	{ name: "customer4", street: "345 Northwood Rd.", city: "Denver", state: "Colorado", zipcode: "80012", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer4@example.com" },
	{ name: "customer5", street: "567 Kirkwood Ln.", city: "Louisville", state: "Colorado", zipcode: "80027", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer5@example.com" },
	{ name: "customer6", street: "789 Lilac Circle", city: "Boulder", state: "Colorado", zipcode: "80304", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer6@example.com" }
	])

# Products
products = Product.create([
	{ name: "product1", description: "First product description",		upc: 111111111111, unit_price: 1234.56, inventory_qty: 100 },
	{ name: "product2", description: "Second product description",	upc: 222222222222, unit_price: 2345.67, inventory_qty: 200 },
	{ name: "product3", description: "Third product description",		upc: 333333333333, unit_price: 3456.78, inventory_qty: 300 },
	{ name: "product4", description: "Fourth product description",	upc: 444444444444, unit_price: 4567.89, inventory_qty: 400 },
	{ name: "product5", description: "Fifth product description",		upc: 555555555555, unit_price: 5678.90, inventory_qty: 500 },
	{ name: "product6", description: "Sixth product description",		upc: 666666666666, unit_price: 6789.01, inventory_qty: 600 },
	{ name: "product7", description: "Seventh product description",	upc: 777777777777, unit_price: 7890.12, inventory_qty: 700 },
	{ name: "product8", description: "Eighth product description",	upc: 888888888888, unit_price: 8901.23, inventory_qty: 800 },
	{ name: "product9", description: "Ninth product description",		upc: 999999999999, unit_price: 9012.34, inventory_qty: 900 }
	])

# Orders
customers.each do |customer|
	orders = customer.orders.create( [ { description: "order1", date: Time.now.to_date }, { description: "order2", date: Time.now.to_date }, { description: "order3", date: Time.now.to_date } ] )
end

# NOTE: This nested block was not working in the Heroku console for some reason.  Try adding 'line_items' manually.
#orders.each do |order|
#	products.each do |product|
#		product.line_items.create(order_id: order.id, product_id: product.id, quantity: 100)
#	end
#end

#		line_item = LineItem.create(order_id: order.id, product_id: product.id, quantity: 100)
#	qty = 100
#		qty += 100
