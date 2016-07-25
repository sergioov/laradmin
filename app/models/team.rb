class Team < ApplicationRecord
  belongs_to :programed_course
  belongs_to :person
  has_many :students, :through => :team_members, dependent: :destroy
  has_many :team_members
end
