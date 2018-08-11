class BloodDonorsController < ApplicationController
  before_action :set_blood_donor, only: [:show, :edit, :update, :destroy]

  # GET /blood_donors
  # GET /blood_donors.json
  def index
    @blood_donors = BloodDonor.all
  end

  # GET /blood_donors/1
  # GET /blood_donors/1.json
  def show
  end

  # GET /blood_donors/new
  def new
    @blood_donor = BloodDonor.new
  end

  # GET /blood_donors/1/edit
  def edit
  end

  # POST /blood_donors
  # POST /blood_donors.json
  def create
    @blood_donor = BloodDonor.new(blood_donor_params)

    respond_to do |format|
      if @blood_donor.save
        format.html { redirect_to @blood_donor, notice: 'Blood donor was successfully created.' }
        format.json { render :show, status: :created, location: @blood_donor }
      else
        format.html { render :new }
        format.json { render json: @blood_donor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blood_donors/1
  # PATCH/PUT /blood_donors/1.json
  def update
    respond_to do |format|
      if @blood_donor.update(blood_donor_params)
        format.html { redirect_to @blood_donor, notice: 'Blood donor was successfully updated.' }
        format.json { render :show, status: :ok, location: @blood_donor }
      else
        format.html { render :edit }
        format.json { render json: @blood_donor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_donors/1
  # DELETE /blood_donors/1.json
  def destroy
    @blood_donor.destroy
    respond_to do |format|
      format.html { redirect_to blood_donors_url, notice: 'Blood donor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_donor
      @blood_donor = BloodDonor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blood_donor_params
      params.require(:blood_donor).permit(:name, :phone_number, :blood_type, :address)
    end
end
