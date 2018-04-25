class RemoveDistanceFromListings < ActiveRecord::Migration[5.1]
  def change
    remove_column :listings, :distance, :decimal
  end
end
