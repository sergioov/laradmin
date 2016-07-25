class CreateTeamMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :team_members do |t|
      t.integer :team_id, foreign_key: true
      t.timestamps
    end
    add_reference :team_members, :student, references: :people, index: true
    add_foreign_key :team_members, :people, column: :student_id
  end
end
