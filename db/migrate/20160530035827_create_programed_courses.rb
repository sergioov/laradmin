class CreateProgramedCourses < ActiveRecord::Migration
  def change
    create_table :programed_courses do |t|
      t.references :course, index: true, foreign_key: true
      t.text :details
      t.date :start_date

      t.timestamps null: false
    end
  end
end
