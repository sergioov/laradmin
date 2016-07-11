class ProgramedCoursesController < ApplicationController
  before_action :set_programed_course, only: [ :show, :edit, :update, :destroy]
  before_action :set_course, only: [:index, :new, :create]
  before_action :set_available_supervisors, only: [:new, :create, :edit]


  # GET /programed_courses
  # GET /programed_courses.json
  def index
    @programed_courses = ProgramedCourse.where(course_id: @course.id).all.order(:start_date)
  end

  # GET /programed_courses/1
  # GET /programed_courses/1.json
  def show
  end

  # GET /programed_courses/new
  def new
    @programed_course = ProgramedCourse.new
  end

  # GET /programed_courses/1/edit
  def edit
  end

  # POST /programed_courses
  # POST /programed_courses.json
  def create
    @programed_course = ProgramedCourse.new(programed_course_params)
    @programed_course.course_id = @course.id

    respond_to do |format|
      if @programed_course.save
        format.html { redirect_to @course, notice: 'Programed course was successfully created.' }
        format.json { render :show, status: :created, location: @programed_course }
      else
        format.html { render :new }
        format.json { render json: @programed_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programed_courses/1
  # PATCH/PUT /programed_courses/1.json
  def update
    respond_to do |format|
      if @programed_course.update(programed_course_params)
        format.html { redirect_to course_programed_courses_path(@programed_course.course_id), notice: 'Programed course was successfully updated.' }
        format.json { render :show, status: :ok, location: @programed_course }
      else
        format.html { render :edit }
        format.json { render json: @programed_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programed_courses/1
  # DELETE /programed_courses/1.json
  def destroy
    @programed_course.destroy
    respond_to do |format|
      format.html { redirect_to course_programed_courses_path(@course), notice: 'Programed course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programed_course
      @programed_course = ProgramedCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

    
    def programed_course_params
      params.require(:programed_course).permit(:start_date, :details, :supervisor_id) 
    end

    def set_course
      @course = Course.find(params[:course_id])
    end

    def set_available_supervisors
      @supervisors = Person.where(:teacher => true)
    end

end
