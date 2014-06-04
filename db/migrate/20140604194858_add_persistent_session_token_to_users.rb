class AddPersistentSessionTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :persistent_session_token, :string
    add_index  :users, :persistent_session_token
  end
end
