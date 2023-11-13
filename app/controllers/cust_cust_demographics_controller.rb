class CustCustDemographicsController < ApplicationController
  before_action :set_cust_cust_demographic, only: %i[ show edit update destroy ]

  # GET /cust_cust_demographics or /cust_cust_demographics.json
  def index
    @cust_cust_demographics = CustCustDemographic.all
  end

  # GET /cust_cust_demographics/1 or /cust_cust_demographics/1.json
  def show
  end

  # GET /cust_cust_demographics/new
  def new
    @cust_cust_demographic = CustCustDemographic.new
  end

  # GET /cust_cust_demographics/1/edit
  def edit
  end

  # POST /cust_cust_demographics or /cust_cust_demographics.json
  def create
    @cust_cust_demographic = CustCustDemographic.new(cust_cust_demographic_params)

    respond_to do |format|
      if @cust_cust_demographic.save
        format.html { redirect_to cust_cust_demographic_url(@cust_cust_demographic), notice: "Cust cust demographic was successfully created." }
        format.json { render :show, status: :created, location: @cust_cust_demographic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cust_cust_demographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cust_cust_demographics/1 or /cust_cust_demographics/1.json
  def update
    respond_to do |format|
      if @cust_cust_demographic.update(cust_cust_demographic_params)
        format.html { redirect_to cust_cust_demographic_url(@cust_cust_demographic), notice: "Cust cust demographic was successfully updated." }
        format.json { render :show, status: :ok, location: @cust_cust_demographic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cust_cust_demographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cust_cust_demographics/1 or /cust_cust_demographics/1.json
  def destroy
    @cust_cust_demographic.destroy

    respond_to do |format|
      format.html { redirect_to cust_cust_demographics_url, notice: "Cust cust demographic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cust_cust_demographic
      @cust_cust_demographic = CustCustDemographic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cust_cust_demographic_params
      params.fetch(:cust_cust_demographic, {})
    end
end
