class ProfileQuestionMastersController < ApplicationController
  before_action :set_profile_question_master, only: [:show, :edit, :update, :destroy]

  # GET /profile_question_masters
  # GET /profile_question_masters.json
  def index
    @profile_question_masters = ProfileQuestionMaster.all
  end

  # GET /profile_question_masters/1
  # GET /profile_question_masters/1.json
  def show
  end

  # GET /profile_question_masters/new
  def new
    @section = Section.all
    @profile_question_master = ProfileQuestionMaster.new
  end

  # GET /profile_question_masters/1/edit
  def edit
  end

  # POST /profile_question_masters
  # POST /profile_question_masters.json
  def create
    @profile_question_master = ProfileQuestionMaster.new(profile_question_master_params)
 
    @profile_question_master.section_id = params[:section]
    
    respond_to do |format|
      if @profile_question_master.save
        format.html { redirect_to @profile_question_master, notice: 'Profile question master was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profile_question_master }
      else
        format.html { render action: 'new' }
        format.json { render json: @profile_question_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_question_masters/1
  # PATCH/PUT /profile_question_masters/1.json
  def update
    respond_to do |format|
      if @profile_question_master.update(profile_question_master_params)
        format.html { redirect_to @profile_question_master, notice: 'Profile question master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profile_question_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_question_masters/1
  # DELETE /profile_question_masters/1.json
  def destroy
    @profile_question_master.destroy
    respond_to do |format|
      format.html { redirect_to profile_question_masters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_question_master
      @profile_question_master = ProfileQuestionMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_question_master_params
      params.require(:profile_question_master).permit(:section_id, :questionname, :min_length, :max_length, :question_type)
    end
end
