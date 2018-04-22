class CreateSubleasers < ActiveRecord::Migration[5.1]
  def change
    create_table :subleasers do |t|
      t.string :name
      t.string :email
      t.integer :listingID
      t.integer :rating

      t.timestamps
    end
  end
end
