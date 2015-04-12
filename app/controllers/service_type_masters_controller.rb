class ServiceTypeMastersController < ApplicationController
  before_action :set_service_type_master, only: [:show, :edit, :update, :destroy]

  # GET /service_type_masters
  # GET /service_type_masters.json
  def index
    @service_type_masters = ServiceTypeMaster.all
  end

  # GET /service_type_masters/1
  # GET /service_type_masters/1.json
  def show
  end

  # GET /service_type_masters/new
  def new
    @service_type_master = ServiceTypeMaster.new
  end

  # GET /service_type_masters/1/edit
  def edit
  end

  # POST /service_type_masters
  # POST /service_type_masters.json
  def create
    @service_type_master = ServiceTypeMaster.new(service_type_master_params)

    respond_to do |format|
      if @service_type_master.save
        format.html { redirect_to @service_type_master, notice: 'Service type master was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service_type_master }
      else
        format.html { render action: 'new' }
        format.json { render json: @service_type_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_type_masters/1
  # PATCH/PUT /service_type_masters/1.json
  def update
    respond_to do |format|
      if @service_type_master.update(service_type_master_params)
        format.html { redirect_to @service_type_master, notice: 'Service type master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service_type_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_type_masters/1
  # DELETE /service_type_masters/1.json
  def destroy
    @service_type_master.destroy
    respond_to do |format|
      format.html { redirect_to service_type_masters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_type_master
      @service_type_master = ServiceTypeMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_type_master_params
      params[:service_type_master]
    end
end
