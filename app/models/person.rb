class Person < ActiveRecord::Base
  has_many :supervised_programed_courses, class_name: "ProgramedCourse", foreign_key: "supervisor_id"
  has_many :teach_sessions, class_name: "ProgramedCourseSession", foreign_key: "teacher_id"
  has_many :enrollments
  has_many :programed_courses, :through => :enrollments
  has_many :teams, :through => :team_members
  
  def full_name
    "#{first_name} #{second_names} #{last_name} #{second_last_name}"
  end

end
