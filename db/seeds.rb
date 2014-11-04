# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# NOTE: db:reset appears to call this file also.
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# IMPORTANT: Removed the User creation statements from this file so that it could be stored in git.  They are now in the
# Associations application reference document.  Run them from the Rails console after seeding/resetting the database.

# Customers
customers = Customer.create([
	{ name: "customer1", street: "123 Main St.", city: "Dallas", state: "Texas", zipcode: "75234", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer1@example.com" },
	{ name: "customer2", street: "456 Elm St.", city: "Austin", state: "Texas", zipcode: "78610", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer2@example.com" },
	{ name: "customer3", street: "234 Broadway Ave.", city: "Ft. Worth", state: "Texas", zipcode: "76006", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer3@example.com" },
	{ name: "customer4", street: "345 Northwood Rd.", city: "Denver", state: "Colorado", zipcode: "80012", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer4@example.com" },
	{ name: "customer5", street: "567 Kirkwood Ln.", city: "Louisville", state: "Colorado", zipcode: "80027", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer5@example.com" },
	{ name: "customer6", street: "789 Lilac Circle", city: "Boulder", state: "Colorado", zipcode: "80304", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer6@example.com" },
	{ name: "customer7", street: "890 Lincoln Ave.", city: "Ft. Worth", state: "Texas", zipcode: "76006", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer7@example.com" },
	{ name: "customer8", street: "901 Washington Rd.", city: "Denver", state: "Colorado", zipcode: "80012", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer8@example.com" },
	{ name: "customer9", street: "210 Primrose Ln.", city: "Louisville", state: "Colorado", zipcode: "80027", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer9@example.com" },
	{ name: "customer10", street: "321 Knight Circle", city: "Boulder", state: "Colorado", zipcode: "80304", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer10@example.com" },
	{ name: "customer11", street: "123 Main St.", city: "Dallas", state: "Texas", zipcode: "75234", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer11@example.com" },
	{ name: "customer12", street: "456 Elm St.", city: "Austin", state: "Texas", zipcode: "78610", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer12@example.com" },
	{ name: "customer13", street: "234 Broadway Ave.", city: "Ft. Worth", state: "Texas", zipcode: "76006", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer13@example.com" },
	{ name: "customer14", street: "345 Northwood Rd.", city: "Denver", state: "Colorado", zipcode: "80012", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer14@example.com" },
	{ name: "customer15", street: "567 Kirkwood Ln.", city: "Louisville", state: "Colorado", zipcode: "80027", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer15@example.com" },
	{ name: "customer16", street: "789 Lilac Circle", city: "Boulder", state: "Colorado", zipcode: "80304", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer16@example.com" },
	{ name: "customer17", street: "890 Lincoln Ave.", city: "Ft. Worth", state: "Texas", zipcode: "76006", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer17@example.com" },
	{ name: "customer18", street: "901 Washington Rd.", city: "Denver", state: "Colorado", zipcode: "80012", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer18@example.com" },
	{ name: "customer19", street: "210 Primrose Ln.", city: "Louisville", state: "Colorado", zipcode: "80027", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer19@example.com" },
	{ name: "customer20", street: "321 Knight Circle", city: "Boulder", state: "Colorado", zipcode: "80304", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer20@example.com" },
	{ name: "customer21", street: "123 Main St.", city: "Dallas", state: "Texas", zipcode: "75234", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer21@example.com" },
	{ name: "customer22", street: "456 Elm St.", city: "Austin", state: "Texas", zipcode: "78610", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer22@example.com" },
	{ name: "customer23", street: "234 Broadway Ave.", city: "Ft. Worth", state: "Texas", zipcode: "76006", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer23@example.com" },
	{ name: "customer24", street: "345 Northwood Rd.", city: "Denver", state: "Colorado", zipcode: "80012", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer24@example.com" },
	{ name: "customer25", street: "567 Kirkwood Ln.", city: "Louisville", state: "Colorado", zipcode: "80027", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer25@example.com" },
	{ name: "customer26", street: "789 Lilac Circle", city: "Boulder", state: "Colorado", zipcode: "80304", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer26@example.com" },
	{ name: "customer27", street: "890 Lincoln Ave.", city: "Ft. Worth", state: "Texas", zipcode: "76006", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer27@example.com" },
	{ name: "customer28", street: "901 Washington Rd.", city: "Denver", state: "Colorado", zipcode: "80012", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer28@example.com" },
	{ name: "customer29", street: "210 Primrose Ln.", city: "Louisville", state: "Colorado", zipcode: "80027", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer29@example.com" },
	{ name: "customer30", street: "321 Knight Circle", city: "Boulder", state: "Colorado", zipcode: "80304", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer30@example.com" },
	{ name: "customer31", street: "123 Main St.", city: "Dallas", state: "Texas", zipcode: "75234", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer31@example.com" },
	{ name: "customer32", street: "456 Elm St.", city: "Austin", state: "Texas", zipcode: "78610", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer32@example.com" },
	{ name: "customer33", street: "234 Broadway Ave.", city: "Ft. Worth", state: "Texas", zipcode: "76006", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer33@example.com" },
	{ name: "customer34", street: "345 Northwood Rd.", city: "Denver", state: "Colorado", zipcode: "80012", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer34@example.com" },
	{ name: "customer35", street: "567 Kirkwood Ln.", city: "Louisville", state: "Colorado", zipcode: "80027", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer35@example.com" },
	{ name: "customer36", street: "789 Lilac Circle", city: "Boulder", state: "Colorado", zipcode: "80304", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer36@example.com" },
	{ name: "customer37", street: "890 Lincoln Ave.", city: "Ft. Worth", state: "Texas", zipcode: "76006", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer37@example.com" },
	{ name: "customer38", street: "901 Washington Rd.", city: "Denver", state: "Colorado", zipcode: "80012", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer38@example.com" },
	{ name: "customer39", street: "210 Primrose Ln.", city: "Louisville", state: "Colorado", zipcode: "80027", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer39@example.com" },
	{ name: "customer40", street: "321 Knight Circle", city: "Boulder", state: "Colorado", zipcode: "80304", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer40@example.com" },
	{ name: "customer41", street: "123 Main St.", city: "Dallas", state: "Texas", zipcode: "75234", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer41@example.com" },
	{ name: "customer42", street: "456 Elm St.", city: "Austin", state: "Texas", zipcode: "78610", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer42@example.com" },
	{ name: "customer43", street: "234 Broadway Ave.", city: "Ft. Worth", state: "Texas", zipcode: "76006", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer43@example.com" },
	{ name: "customer44", street: "345 Northwood Rd.", city: "Denver", state: "Colorado", zipcode: "80012", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer44@example.com" },
	{ name: "customer45", street: "567 Kirkwood Ln.", city: "Louisville", state: "Colorado", zipcode: "80027", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer45@example.com" },
	{ name: "customer46", street: "789 Lilac Circle", city: "Boulder", state: "Colorado", zipcode: "80304", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer46@example.com" },
	{ name: "customer47", street: "890 Lincoln Ave.", city: "Ft. Worth", state: "Texas", zipcode: "76006", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer47@example.com" },
	{ name: "customer48", street: "901 Washington Rd.", city: "Denver", state: "Colorado", zipcode: "80012", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer48@example.com" },
	{ name: "customer49", street: "210 Primrose Ln.", city: "Louisville", state: "Colorado", zipcode: "80027", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer49@example.com" },
	{ name: "customer50", street: "321 Knight Circle", city: "Boulder", state: "Colorado", zipcode: "80304", home_phone: "800-555-1212", work_phone: "800-555-3434", email: "customer50@example.com" }
])

# Products
products = Array.new()
(1..50).each do |i|
	upc_val = 100000000000 + i
	product = Product.create(name: "product" + i.to_s, description: "Product description " + i.to_s, upc: upc_val, unit_price: i * 10, inventory_qty: i * 100 )
	products << product
end


#products = Product.create([
#	{ name: "product1", description: "First product description",		upc: 111111111111, unit_price: 1234.56, inventory_qty: 100 },
#	{ name: "product2", description: "Second product description",	upc: 222222222222, unit_price: 2345.67, inventory_qty: 200 },
#	{ name: "product3", description: "Third product description",		upc: 333333333333, unit_price: 3456.78, inventory_qty: 300 },
#	{ name: "product4", description: "Fourth product description",	upc: 444444444444, unit_price: 4567.89, inventory_qty: 400 },
#	{ name: "product5", description: "Fifth product description",		upc: 555555555555, unit_price: 5678.90, inventory_qty: 500 },
#	{ name: "product6", description: "Sixth product description",		upc: 666666666666, unit_price: 6789.01, inventory_qty: 600 },
#	{ name: "product7", description: "Seventh product description",	upc: 777777777777, unit_price: 7890.12, inventory_qty: 700 },
#	{ name: "product8", description: "Eighth product description",	upc: 888888888888, unit_price: 8901.23, inventory_qty: 800 },
#	{ name: "product9", description: "Ninth product description",		upc: 999999999999, unit_price: 9012.34, inventory_qty: 900 }
#	])

# Orders
#orders = Array.new()
customers.each do |customer|
	orders = customer.orders.create( [ { description: "order1", date: Time.now.to_date }, { description: "order2", date: Time.now.to_date }, { description: "order3", date: Time.now.to_date } ] )

	orders.each do |order|
		(0..3).each do |j|
			order.line_items.create(order_id: order.id, product_id: products[j].id, quantity: 100)
		end
	end

end

# NOTE: This nested block was not working in the Heroku console for some reason.  Try adding 'line_items' manually.
#orders.each do |order|
#	for j in 1..4
#		products[j].line_items.create(order_id: order.id, product_id: product.id, quantity: 100)
#	end
#end
#orders.each do |order|
#	products.each do |product|
#		product.line_items.create(order_id: order.id, product_id: product.id, quantity: 100)
#	end
#end

#		line_item = LineItem.create(order_id: order.id, product_id: product.id, quantity: 100)
#	qty = 100
#		qty += 100
