class AlterTableOrders < ActiveRecord::Migration
  def change
  	remove_column :orders, :total
    add_column :orders, :total, :decimal, precision: 10, scale: 2, default: 0
  end
end
