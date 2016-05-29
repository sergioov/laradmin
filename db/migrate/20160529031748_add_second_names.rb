class AddSecondNames < ActiveRecord::Migration
  def change
    add_column :people, :second_names, :string
  end
end
