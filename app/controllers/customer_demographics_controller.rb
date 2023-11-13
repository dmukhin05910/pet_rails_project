class CustomerDemographicsController < ApplicationController
  before_action :set_customer_demographic, only: %i[ show edit update destroy ]

  # GET /customer_demographics or /customer_demographics.json
  def index
    @customer_demographics = CustomerDemographic.all
  end

  # GET /customer_demographics/1 or /customer_demographics/1.json
  def show
  end

  # GET /customer_demographics/new
  def new
    @customer_demographic = CustomerDemographic.new
  end

  # GET /customer_demographics/1/edit
  def edit
  end

  # POST /customer_demographics or /customer_demographics.json
  def create
    @customer_demographic = CustomerDemographic.new(customer_demographic_params)

    respond_to do |format|
      if @customer_demographic.save
        format.html { redirect_to customer_demographic_url(@customer_demographic), notice: "Customer demographic was successfully created." }
        format.json { render :show, status: :created, location: @customer_demographic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer_demographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_demographics/1 or /customer_demographics/1.json
  def update
    respond_to do |format|
      if @customer_demographic.update(customer_demographic_params)
        format.html { redirect_to customer_demographic_url(@customer_demographic), notice: "Customer demographic was successfully updated." }
        format.json { render :show, status: :ok, location: @customer_demographic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer_demographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_demographics/1 or /customer_demographics/1.json
  def destroy
    @customer_demographic.destroy

    respond_to do |format|
      format.html { redirect_to customer_demographics_url, notice: "Customer demographic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_demographic
      @customer_demographic = CustomerDemographic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_demographic_params
      params.fetch(:customer_demographic, {})
    end
end
