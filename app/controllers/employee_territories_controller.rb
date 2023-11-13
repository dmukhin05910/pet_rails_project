class EmployeeTerritoriesController < ApplicationController
  before_action :set_employee_territory, only: %i[ show edit update destroy ]

  # GET /employee_territories or /employee_territories.json
  def index
    @employee_territories = EmployeeTerritory.all
  end

  # GET /employee_territories/1 or /employee_territories/1.json
  def show
  end

  # GET /employee_territories/new
  def new
    @employee_territory = EmployeeTerritory.new
  end

  # GET /employee_territories/1/edit
  def edit
  end

  # POST /employee_territories or /employee_territories.json
  def create
    @employee_territory = EmployeeTerritory.new(employee_territory_params)

    respond_to do |format|
      if @employee_territory.save
        format.html { redirect_to employee_territory_url(@employee_territory), notice: "Employee territory was successfully created." }
        format.json { render :show, status: :created, location: @employee_territory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee_territory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_territories/1 or /employee_territories/1.json
  def update
    respond_to do |format|
      if @employee_territory.update(employee_territory_params)
        format.html { redirect_to employee_territory_url(@employee_territory), notice: "Employee territory was successfully updated." }
        format.json { render :show, status: :ok, location: @employee_territory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee_territory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_territories/1 or /employee_territories/1.json
  def destroy
    @employee_territory.destroy

    respond_to do |format|
      format.html { redirect_to employee_territories_url, notice: "Employee territory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_territory
      @employee_territory = EmployeeTerritory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_territory_params
      params.fetch(:employee_territory, {})
    end
end
