class ProductProfilesController < ApplicationController
  before_action :set_product_profile, only: [:show, :edit, :update, :destroy]

  # GET /product_profiles
  # GET /product_profiles.json
  def index
    @product_profiles = ProductProfile.all
  end

  # GET /product_profiles/1
  # GET /product_profiles/1.json
  def show
  end

  # GET /product_profiles/new
  def new
    @product_profile = ProductProfile.new
  end

  # GET /product_profiles/1/edit
  def edit
  end

  # POST /product_profiles
  # POST /product_profiles.json
  def create
    @product_profile = ProductProfile.new(product_profile_params)

    respond_to do |format|
      if @product_profile.save
        format.html { redirect_to @product_profile, notice: 'Product profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product_profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @product_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_profiles/1
  # PATCH/PUT /product_profiles/1.json
  def update
    respond_to do |format|
      if @product_profile.update(product_profile_params)
        format.html { redirect_to @product_profile, notice: 'Product profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_profiles/1
  # DELETE /product_profiles/1.json
  def destroy
    @product_profile.destroy
    respond_to do |format|
      format.html { redirect_to product_profiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_profile
      @product_profile = ProductProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_profile_params
      params.require(:product_profile).permit(:name)
    end
end
