class PeopleController < ApplicationController
	before_action :find_person, only: [:show, :edit, :update, :destroy]
	before_action :find_enrollments, only: [:show]
  before_action :authenticate_user!

	def index 
		@person = Person.all
	end

	def new
		@person = Person.new
	end

	def create
		@person = Person.new(person_params)

		if @person.save 
			redirect_to @person, notice: "Successful creation of new person"
		else 
			render 'new'
		end 
	end

	def edit 

	end

	def show 

	end

	def update 
		if @person.update(person_params)
			redirect_to @person
		else
			render 'edit'
		end
	end 

	def destroy
		@recipe.destroy	
		redirect_to root_path, notice: "Successful delete of person"
	end

	private 

	def person_params
		params.require(:person).permit(:first_name, :second_names, :last_name, :birth_date ,:second_last_name, :age, :phone, :email, :address, :teacher ) 
	end

	def find_person
		@person  = Person.find(params[:id])
	end

	def find_enrollments
		@enrollments = Enrollment.where(student: @person)
	end

end
