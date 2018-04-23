class AddDetailsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :listingID, :integer
    add_column :users, :userType, :integer
  end
end
