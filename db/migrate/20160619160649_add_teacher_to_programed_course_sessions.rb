class AddTeacherToProgramedCourseSessions < ActiveRecord::Migration
  def change
    add_reference :programed_course_sessions, :teacher, references: :people, index: true
    add_foreign_key :programed_course_sessions, :people, column: :teacher_id
  end
end
