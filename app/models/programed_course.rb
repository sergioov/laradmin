class ProgramedCourse < ActiveRecord::Base
  belongs_to :course
  has_many :programed_course_sessions
end
