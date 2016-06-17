class Enrollment < ActiveRecord::Base
  belongs_to :student, :class_name => "Person"
  belongs_to :programed_course
    
end
