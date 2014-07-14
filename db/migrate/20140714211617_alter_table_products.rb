class AlterTableProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :upc
    add_column :products, :upc, :bigint
  end
end
