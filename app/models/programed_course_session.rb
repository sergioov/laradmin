class ProgramedCourseSession < ActiveRecord::Base
  belongs_to :programed_course, dependent: :destroy
  belongs_to :teacher, :class_name => "Person", dependent: :destroy
end
