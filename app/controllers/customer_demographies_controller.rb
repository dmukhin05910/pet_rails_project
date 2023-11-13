class CustomerDemographiesController < ApplicationController
  before_action :set_customer_demography, only: %i[ show edit update destroy ]

  # GET /customer_demographies or /customer_demographies.json
  def index
    @customer_demographies = CustomerDemography.all
  end

  # GET /customer_demographies/1 or /customer_demographies/1.json
  def show
  end

  # GET /customer_demographies/new
  def new
    @customer_demography = CustomerDemography.new
  end

  # GET /customer_demographies/1/edit
  def edit
  end

  # POST /customer_demographies or /customer_demographies.json
  def create
    @customer_demography = CustomerDemography.new(customer_demography_params)

    respond_to do |format|
      if @customer_demography.save
        format.html { redirect_to customer_demography_url(@customer_demography), notice: "Customer demography was successfully created." }
        format.json { render :show, status: :created, location: @customer_demography }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer_demography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_demographies/1 or /customer_demographies/1.json
  def update
    respond_to do |format|
      if @customer_demography.update(customer_demography_params)
        format.html { redirect_to customer_demography_url(@customer_demography), notice: "Customer demography was successfully updated." }
        format.json { render :show, status: :ok, location: @customer_demography }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer_demography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_demographies/1 or /customer_demographies/1.json
  def destroy
    @customer_demography.destroy

    respond_to do |format|
      format.html { redirect_to customer_demographies_url, notice: "Customer demography was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_demography
      @customer_demography = CustomerDemography.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_demography_params
      params.fetch(:customer_demography, {})
    end
end
