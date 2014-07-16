class AlterTableLineItemDiscountPercentDefault < ActiveRecord::Migration
  def change
  	change_column :line_items, :discount_percent, :integer, default: 0
  end
end
