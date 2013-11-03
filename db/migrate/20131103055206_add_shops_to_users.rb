class AddShopsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :shops, :string
  end
end
