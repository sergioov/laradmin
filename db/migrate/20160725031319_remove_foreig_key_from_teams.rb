class RemoveForeigKeyFromTeams < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key "teams", "programed_course_sessions"
    add_foreign_key "teams", "programed_courses", column: "programed_course_id"
  end
end
