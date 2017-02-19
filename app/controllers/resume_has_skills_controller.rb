class ResumeHasSkillsController < ApplicationController
  before_action :set_resume_has_skill, only: [:show, :edit, :update, :destroy]

  # GET /resume_has_skills
  # GET /resume_has_skills.json
  def index
    @resume_has_skills = ResumeHasSkill.all
  end

  # GET /resume_has_skills/1
  # GET /resume_has_skills/1.json
  def show
  end

  # GET /resume_has_skills/new
  def new
    @resume_has_skill = ResumeHasSkill.new
  end

  # GET /resume_has_skills/1/edit
  def edit
  end

  # POST /resume_has_skills
  # POST /resume_has_skills.json
  def create
    @resume_has_skill = ResumeHasSkill.new(resume_has_skill_params)

    respond_to do |format|
      if @resume_has_skill.save
        format.html { redirect_to @resume_has_skill, notice: 'Resume has skill was successfully created.' }
        format.json { render :show, status: :created, location: @resume_has_skill }
      else
        format.html { render :new }
        format.json { render json: @resume_has_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resume_has_skills/1
  # PATCH/PUT /resume_has_skills/1.json
  def update
    respond_to do |format|
      if @resume_has_skill.update(resume_has_skill_params)
        format.html { redirect_to @resume_has_skill, notice: 'Resume has skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @resume_has_skill }
      else
        format.html { render :edit }
        format.json { render json: @resume_has_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resume_has_skills/1
  # DELETE /resume_has_skills/1.json
  def destroy
    @resume_has_skill.destroy
    respond_to do |format|
      format.html { redirect_to resume_has_skills_url, notice: 'Resume has skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resume_has_skill
      @resume_has_skill = ResumeHasSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resume_has_skill_params
      params.require(:resume_has_skill).permit(:resume_id, :skill_id, :level)
    end
end
