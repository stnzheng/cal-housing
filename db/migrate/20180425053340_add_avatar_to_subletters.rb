class AddAvatarToSubletters < ActiveRecord::Migration[5.1]
  def change
    add_column :subletters, :avatar, :string
  end
end
