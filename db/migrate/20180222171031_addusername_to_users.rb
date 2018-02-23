class AddusernameToUsers < ActiveRecord::Migration[5.1]
  def change
 
    add_column :users,:username ,:string # add column named username
    add_index :users, :username, unique: true
  end
end
