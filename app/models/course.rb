class Course < ActiveRecord::Base
  has_many :programed_courses, dependent: :destroy
end
