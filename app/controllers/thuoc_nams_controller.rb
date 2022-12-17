class ThuocNamsController < ApplicationController
  before_action :set_thuoc_nam, only: %i[ show edit update destroy ]

  # GET /thuoc_nams or /thuoc_nams.json
  def index
    @thuoc_nams = ThuocNam.all
  end

  # GET /thuoc_nams/1 or /thuoc_nams/1.json
  def show
  end

  # GET /thuoc_nams/new
  def new
    @thuoc_nam = ThuocNam.new
  end

  # GET /thuoc_nams/1/edit
  def edit
  end

  # POST /thuoc_nams or /thuoc_nams.json
  def create
    @thuoc_nam = ThuocNam.new(thuoc_nam_params)

    respond_to do |format|
      if @thuoc_nam.save
        format.html { redirect_to thuoc_nam_url(@thuoc_nam), notice: "Thuoc nam was successfully created." }
        format.json { render :show, status: :created, location: @thuoc_nam }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @thuoc_nam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thuoc_nams/1 or /thuoc_nams/1.json
  def update
    respond_to do |format|
      if @thuoc_nam.update(thuoc_nam_params)
        format.html { redirect_to thuoc_nam_url(@thuoc_nam), notice: "Thuoc nam was successfully updated." }
        format.json { render :show, status: :ok, location: @thuoc_nam }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @thuoc_nam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thuoc_nams/1 or /thuoc_nams/1.json
  def destroy
    @thuoc_nam.destroy

    respond_to do |format|
      format.html { redirect_to thuoc_nams_url, notice: "Thuoc nam was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thuoc_nam
      @thuoc_nam = ThuocNam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def thuoc_nam_params
      params.require(:thuoc_nam).permit(:ten, :dacdiem, :maula, :duoctinh, :luuysudung, :noitrong)
    end
end
