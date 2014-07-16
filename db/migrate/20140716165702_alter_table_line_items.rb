class AlterTableLineItems < ActiveRecord::Migration
  def change
  	remove_column :line_items, :total
    add_column :line_items, :discount_percent, :integer
  end
end
