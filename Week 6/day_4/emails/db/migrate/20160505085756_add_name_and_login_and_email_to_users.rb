class AddNameAndLoginAndEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :login, :string
    add_column :users, :email, :string
  end
end
