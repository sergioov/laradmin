class TeachersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    get_teachers
  end

  private 
    def get_teachers
      @teachers = Person.where(teacher: true)
    end
end
