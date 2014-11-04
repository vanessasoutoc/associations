class RenameOrderNameColumn < ActiveRecord::Migration
  def change
  	rename_column :orders, :order_name, :name
  end
end
