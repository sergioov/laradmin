class ProgramedCourseSession < ActiveRecord::Base
  belongs_to :programed_course
  belongs_to :teacher, :class_name => "Person"
end
