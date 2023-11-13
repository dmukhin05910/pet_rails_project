class CustCustDemographiesController < ApplicationController
  before_action :set_cust_cust_demography, only: %i[ show edit update destroy ]

  # GET /cust_cust_demographies or /cust_cust_demographies.json
  def index
    @cust_cust_demographies = CustCustDemography.all
  end

  # GET /cust_cust_demographies/1 or /cust_cust_demographies/1.json
  def show
  end

  # GET /cust_cust_demographies/new
  def new
    @cust_cust_demography = CustCustDemography.new
  end

  # GET /cust_cust_demographies/1/edit
  def edit
  end

  # POST /cust_cust_demographies or /cust_cust_demographies.json
  def create
    @cust_cust_demography = CustCustDemography.new(cust_cust_demography_params)

    respond_to do |format|
      if @cust_cust_demography.save
        format.html { redirect_to cust_cust_demography_url(@cust_cust_demography), notice: "Cust cust demography was successfully created." }
        format.json { render :show, status: :created, location: @cust_cust_demography }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cust_cust_demography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cust_cust_demographies/1 or /cust_cust_demographies/1.json
  def update
    respond_to do |format|
      if @cust_cust_demography.update(cust_cust_demography_params)
        format.html { redirect_to cust_cust_demography_url(@cust_cust_demography), notice: "Cust cust demography was successfully updated." }
        format.json { render :show, status: :ok, location: @cust_cust_demography }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cust_cust_demography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cust_cust_demographies/1 or /cust_cust_demographies/1.json
  def destroy
    @cust_cust_demography.destroy

    respond_to do |format|
      format.html { redirect_to cust_cust_demographies_url, notice: "Cust cust demography was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cust_cust_demography
      @cust_cust_demography = CustCustDemography.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cust_cust_demography_params
      params.fetch(:cust_cust_demography, {})
    end
end
