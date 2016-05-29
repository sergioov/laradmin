class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :second_last_name
      t.integer :age
      t.string :phone
      t.string :email
      t.text :address
      t.boolean :teacher

      t.timestamps null: false
    end
  end
end
