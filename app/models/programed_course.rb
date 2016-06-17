class ProgramedCourse < ActiveRecord::Base
  belongs_to :course
  has_many :programed_course_sessions
  belongs_to :supervisor, :class_name => "Person"
  has_many :enrollments
  has_many :students, :through => :enrollments

  def course_name
    "#{course.name} empieza #{start_date}"
  end


end