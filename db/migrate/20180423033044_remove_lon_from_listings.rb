class RemoveLonFromListings < ActiveRecord::Migration[5.1]
  def change
    remove_column :listings, :lon, :decimal
  end
end
