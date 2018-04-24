class AddNameToSubletters < ActiveRecord::Migration[5.1]
  def change
    add_column :subletters, :name, :string
  end
end
