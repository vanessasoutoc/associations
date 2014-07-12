class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, limit: 30
      t.string :description
      t.integer :upc
      t.decimal :unit_price, precision: 10, scale: 2
      t.integer :inventory_qty

      t.timestamps
    end
    add_index :products, :name
    add_index :products, :upc, unique: true
  end
end
