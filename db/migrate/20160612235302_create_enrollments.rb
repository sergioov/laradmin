class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :programed_course_id
      t.integer :student_id

      t.timestamps null: false
    end
    add_index :enrollments, :programed_course_id
    add_index :enrollments, :student_id
    add_index :enrollments, [:programed_course_id, :student_id], unique: true

  end
end
