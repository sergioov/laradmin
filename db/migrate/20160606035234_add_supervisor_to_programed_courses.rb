class AddSupervisorToProgramedCourses < ActiveRecord::Migration
  def change
    add_reference :programed_courses, :supervisor, references: :people, index: true
    add_foreign_key :programed_courses, :people, column: :supervisor_id
  end
end
