class TeachersController < ApplicationController

  def index
    get_teachers
  end

  private 
    def get_teachers
      @teachers = Person.where(teacher: true)
    end
end
