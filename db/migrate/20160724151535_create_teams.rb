class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.references :programed_course_session, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
