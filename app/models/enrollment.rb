class Enrollment < ActiveRecord::Base
  belongs_to :student, :class_name => "Person"
  belongs_to :programed_course
  validates :student_id, :presence => true
  validates :programed_course_id, :presence => true
    
end
