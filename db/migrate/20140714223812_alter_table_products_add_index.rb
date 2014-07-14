class AlterTableProductsAddIndex < ActiveRecord::Migration
  def change
    add_index :products, :upc, unique: true
  end
end
