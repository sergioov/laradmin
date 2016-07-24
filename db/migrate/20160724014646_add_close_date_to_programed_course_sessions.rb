class AddCloseDateToProgramedCourseSessions < ActiveRecord::Migration[5.0]
  def change
    add_column :programed_course_sessions, :close_date, :date
  end
end
