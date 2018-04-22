class CreateSubletters < ActiveRecord::Migration[5.1]
  def change
    create_table :subletters do |t|
      t.string :name
      t.string :email
      t.integer :rating
      t.text :description

      t.timestamps
    end
  end
end
