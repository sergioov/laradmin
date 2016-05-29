class Person < ActiveRecord::Base

  def full_name
    "#{first_name} #{second_names} #{last_name} #{second_last_name}"
  end

end
