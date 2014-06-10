class RenameOrderDateColumn < ActiveRecord::Migration
  def change
  	rename_column :orders, :order_date, :date
  end
end
