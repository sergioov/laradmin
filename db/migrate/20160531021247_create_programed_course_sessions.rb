class CreateProgramedCourseSessions < ActiveRecord::Migration
  def change
    create_table :programed_course_sessions do |t|
      t.references :programed_course, index: true, foreign_key: true
      t.integer :session_number
      t.string :topic
      t.date :date

      t.timestamps null: false
    end
  end
end
