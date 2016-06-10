class Person < ActiveRecord::Base
  has_many :supervised_programed_courses, class_name: "ProgramedCourse", foreign_key: "supervisor_id", dependent: :destroy

  def full_name
    "#{first_name} #{second_names} #{last_name} #{second_last_name}"
  end

end
