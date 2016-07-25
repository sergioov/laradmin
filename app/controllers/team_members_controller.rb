class TeamMembersController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy, :index, :new, :create]
  before_action :set_team_member, only: [:show, :edit, :update, :destroy]
  before_action :set_members, only: [:show]
  before_action :authenticate_user!

  # GET /enrollments
  # GET /enrollments.json
  def index
  end

  # GET /enrollments/1
  # GET /enrollments/1.json
  def show
  end

  # GET /enrollments/new
  def new
    @team_member = TeamMember.new
  end

  # GET /enrollments/1/edit
  def edit
  end

  # POST /enrollments
  # POST /enrollments.json
  def create
    set_team
    @team_member = @team.team_members.create(team_member_params)

    respond_to do |format|
      if @team_member.save
        format.html { redirect_to team_path(@team), notice: 'Enrollment was successfully created.' }
        format.json { render :show, status: :created, location: @enrollment }
      else
        format.html { redirect_to programed_course_programed_course_sessions_path(@programed_course.id), notice: 'Esa persona no esta registrada.'  }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrollments/1
  # PATCH/PUT /enrollments/1.json
  def update
    respond_to do |format|
      if @enrollment.update(enrollment_params)
        format.html { redirect_to @enrollment, notice: 'Enrollment was successfully updated.' }
        format.json { render :show, status: :ok, location: @enrollment }
      else
        format.html { render :edit }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollments/1
  # DELETE /enrollments/1.json
  def destroy
    @team_member.destroy
    respond_to do |format|
      format.html { redirect_to programed_course_programed_course_sessions_path(@enrollment.programed_course_id), notice: 'Enrollment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:team_id])
    end

    def set_team_member
      @team_member = TeamMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_member_params
      params.require(:team_member).permit(:student_id, :team_id)
    end

    def set_members
      @team_members = TeamMember.where(team: @team)
    end

  
end
