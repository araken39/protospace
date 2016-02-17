class AddUsernameToUser < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :users, :username, :string
    add_column :users, :member, :string
    add_column :users, :profile, :string
    add_column :users, :works, :string
  end
end
