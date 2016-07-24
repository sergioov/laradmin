class AddCloseDateToProgramedCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :programed_courses, :close_date, :date
  end
end
