class AddAniversaryDateToPeople < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :aniversary, :date
  end
end
