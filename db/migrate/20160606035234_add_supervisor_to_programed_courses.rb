class AddSupervisorToProgramedCourses < ActiveRecord::Migration
  def change
    add_reference :programed_courses, :supervisor, index: true, foreign_key: true
  end
end
