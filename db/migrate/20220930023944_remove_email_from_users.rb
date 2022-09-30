class RemoveEmailFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_index :users, :email
    remove_column :users, :email
  end
end
