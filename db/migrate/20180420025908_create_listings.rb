class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :author
      t.integer :price
      t.integer :open_spots
      t.string :street
      t.string :city
      t.decimal :distance
      t.date :start_date
      t.date :end_date
      t.integer :rating
      t.text :description

      t.timestamps
    end
  end
end
