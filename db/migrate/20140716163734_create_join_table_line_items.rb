class CreateJoinTableLineItems < ActiveRecord::Migration
  def change
  	create_join_table :orders, :products, table_name: :line_items do |t|
      t.integer		:quantity
      t.decimal		:total, precision: 10, scale: 2

      t.timestamps
  	end
  end
end
