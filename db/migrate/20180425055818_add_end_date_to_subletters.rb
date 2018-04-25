class AddEndDateToSubletters < ActiveRecord::Migration[5.1]
  def change
    add_column :subletters, :endDate, :date
  end
end
