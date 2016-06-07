class ProgramedCourse < ActiveRecord::Base
  belongs_to :course
  has_many :programed_course_sessions
  belongs_to :supervisor, :class_name => "Person"
end
