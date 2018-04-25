class AddStartDateToSubletters < ActiveRecord::Migration[5.1]
  def change
    add_column :subletters, :startDate, :date
  end
end
