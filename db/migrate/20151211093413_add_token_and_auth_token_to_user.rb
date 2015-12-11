class AddTokenAndAuthTokenToUser < ActiveRecord::Migration
  def change
    add_column :users, :token, :string
    add_column :users, :auth_token, :string
  end
end
