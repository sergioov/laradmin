class TeamMember < ApplicationRecord
  belongs_to :team
  belongs_to :student, :class_name => "Person"
end
