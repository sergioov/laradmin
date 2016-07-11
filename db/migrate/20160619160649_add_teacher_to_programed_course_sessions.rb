class AddTeacherToProgramedCourseSessions < ActiveRecord::Migration
  def change
    add_reference :programed_course_sessions, :teacher, index: true, foreign_key: true
  end
end
