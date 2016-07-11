class ProgramedCourseSessionsController < ApplicationController
  autocomplete :person, :last_name, :full => true, limit: 15, :column_name => 'last_name', :display_value => 'full_name', :full_model=>true 
  before_action :set_programed_course_session, only: [:show, :edit, :update, :destroy]
  before_action :set_programed_course, only: [:index, :new, :create]
  before_action :set_available_teachers, only: [:new, :create, :edit]


  # GET /programed_course_sessions
  # GET /programed_course_sessions.json
  def index
    @programed_course_sessions = ProgramedCourseSession.where(programed_course_id: @programed_course.id).all
    @enrollments = Enrollment.where(programed_course_id: @programed_course.id).all
    @enrollment = Enrollment.new
    @enrollment.programed_course_id=@programed_course.id
  end

  # GET /programed_course_sessions/1
  # GET /programed_course_sessions/1.json
  def show
  end

  # GET /programed_course_sessions/new
  def new
    @programed_course_session = ProgramedCourseSession.new
    @programed_course_session.programed_course_id = @programed_course.id
  end

  # GET /programed_course_sessions/1/edit
  def edit
  end

  # POST /programed_course_sessions
  # POST /programed_course_sessions.json
  def create
    @programed_course_session = ProgramedCourseSession.new(programed_course_session_params)
    @programed_course_session.programed_course_id = @programed_course.id

    respond_to do |format|
      if @programed_course_session.save
        format.html { redirect_to programed_course_programed_course_sessions_path(@programed_course), notice: 'Programed course session was successfully created.' }
        format.json { render :show, status: :created, location: @programed_course_session }
      else
        format.html { render :new }
        format.json { render json: @programed_course_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programed_course_sessions/1
  # PATCH/PUT /programed_course_sessions/1.json
  def update
    respond_to do |format|
      if @programed_course_session.update(programed_course_session_params)
        format.html { redirect_to programed_course_programed_course_sessions_path(@programed_course_session.programed_course_id), notice: 'Programed course session was successfully updated.' }
        format.json { render :show, status: :ok, location: @programed_course_session }
      else
        format.html { render :edit }
        format.json { render json: @programed_course_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programed_course_sessions/1
  # DELETE /programed_course_sessions/1.json
  def destroy
    @programed_course_session.destroy
    respond_to do |format|
      format.html { redirect_to programed_course_programed_course_sessions_path(@programed_course_session), notice: 'Programed course session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programed_course_session
      @programed_course_session = ProgramedCourseSession.find(params[:id])
    end

    def set_programed_course
      @programed_course = ProgramedCourse.find(params[:programed_course_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programed_course_session_params
      params.require(:programed_course_session).permit(:programed_course_id, :session_number, :topic, :date, :teacher_id)
    end

    def set_available_teachers
      @teachers = Person.where(:teacher => true)
    end

end
