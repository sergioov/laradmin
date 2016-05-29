class RemoveAgeFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :age, :integer
  end
end
