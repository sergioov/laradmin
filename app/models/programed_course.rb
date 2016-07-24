class ProgramedCourse < ActiveRecord::Base
  belongs_to :course
  has_many :programed_course_sessions, dependent: :destroy
  belongs_to :supervisor, :class_name => "Person"
  has_many :enrollments, dependent: :destroy
  has_many :students, :through => :enrollments, dependent: :destroy

  def course_name
    "#{course.name} empieza #{start_date}"
  end


end