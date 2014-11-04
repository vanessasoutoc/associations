class AddDetailsToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :street, :string
    add_column :customers, :city, :string
    add_column :customers, :state, :string
    add_column :customers, :zipcode, :string
    add_column :customers, :home_phone, :string
    add_column :customers, :work_phone, :string
    add_column :customers, :email, :string
  end
end
