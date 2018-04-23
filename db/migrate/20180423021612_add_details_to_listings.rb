class AddDetailsToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :lat, :decimal
    add_column :listings, :lon, :decimal
  end
end
