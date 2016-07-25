class ChangeAsociationOfTeams < ActiveRecord::Migration[5.0]
  def change
    rename_column :teams, :programed_course_session_id, :programed_course_id
  end
end
