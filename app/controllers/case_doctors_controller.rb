class CaseDoctorsController < ApplicationController
  before_action :set_case_doctor, only: [:show, :edit, :update, :destroy]

  # GET /case_doctors
  # GET /case_doctors.json
  def index
    @case_doctors = CaseDoctor.all
  end

  # GET /case_doctors/1
  # GET /case_doctors/1.json
  def show
  end

  # GET /case_doctors/new
  def new
    @case_doctor = CaseDoctor.new
  end

  # GET /case_doctors/1/edit
  def edit
  end

  # POST /case_doctors
  # POST /case_doctors.json
  def create
    @case_doctor = CaseDoctor.new(case_doctor_params)

    respond_to do |format|
      if @case_doctor.save
        format.html { redirect_to @case_doctor, notice: 'Case doctor was successfully created.' }
        format.json { render :show, status: :created, location: @case_doctor }
      else
        format.html { render :new }
        format.json { render json: @case_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_doctors/1
  # PATCH/PUT /case_doctors/1.json
  def update
    respond_to do |format|
      if @case_doctor.update(case_doctor_params)
        format.html { redirect_to @case_doctor, notice: 'Case doctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @case_doctor }
      else
        format.html { render :edit }
        format.json { render json: @case_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_doctors/1
  # DELETE /case_doctors/1.json
  def destroy
    @case_doctor.destroy
    respond_to do |format|
      format.html { redirect_to case_doctors_url, notice: 'Case doctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_doctor
      @case_doctor = CaseDoctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_doctor_params
      params.require(:case_doctor).permit(:case_id, :doctor_id)
    end
end
