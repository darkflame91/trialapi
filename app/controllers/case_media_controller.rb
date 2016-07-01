class CaseMediaController < ApplicationController
  before_action :set_case_medium, only: [:show, :edit, :update, :destroy]

  # GET /case_media
  # GET /case_media.json
  def index
    @case_media = CaseMedium.all
  end

  # GET /case_media/1
  # GET /case_media/1.json
  def show
  end

  # GET /case_media/new
  def new
    @case_medium = CaseMedium.new
  end

  # GET /case_media/1/edit
  def edit
  end

  # POST /case_media
  # POST /case_media.json
  def create
    @case_medium = CaseMedium.new(case_medium_params)

    respond_to do |format|
      if @case_medium.save
        format.html { redirect_to @case_medium, notice: 'Case medium was successfully created.' }
        format.json { render :show, status: :created, location: @case_medium }
      else
        format.html { render :new }
        format.json { render json: @case_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_media/1
  # PATCH/PUT /case_media/1.json
  def update
    respond_to do |format|
      if @case_medium.update(case_medium_params)
        format.html { redirect_to @case_medium, notice: 'Case medium was successfully updated.' }
        format.json { render :show, status: :ok, location: @case_medium }
      else
        format.html { render :edit }
        format.json { render json: @case_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_media/1
  # DELETE /case_media/1.json
  def destroy
    @case_medium.destroy
    respond_to do |format|
      format.html { redirect_to case_media_url, notice: 'Case medium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_medium
      @case_medium = CaseMedium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_medium_params
      params.require(:case_medium).permit(:case_id, :mediatype_id, :mediacode, :has_attachment)
    end
end
