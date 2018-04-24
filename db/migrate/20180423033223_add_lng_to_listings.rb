class AddLngToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :lng, :decimal
  end
end
