class RenameOrderNameToDescription < ActiveRecord::Migration
  def change
  	rename_column :orders, :name, :description
  end
end
