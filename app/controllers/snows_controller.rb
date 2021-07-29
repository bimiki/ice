class SnowsController < ApplicationController
  before_action :set_snow, only: %i[ show edit update destroy ]

  # GET /snows or /snows.json
  def index
    @snows = Snow.all
  end

  # GET /snows/1 or /snows/1.json
  def show
  end

  # GET /snows/new
  def new
    @snow = Snow.new
  end

  # GET /snows/1/edit
  def edit
  end

  # POST /snows or /snows.json
  def create
    @snow = Snow.new(snow_params)

    respond_to do |format|
      if @snow.save
        format.html { redirect_to @snow, notice: "Snow was successfully created." }
        format.json { render :show, status: :created, location: @snow }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @snow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snows/1 or /snows/1.json
  def update
    respond_to do |format|
      if @snow.update(snow_params)
        format.html { redirect_to @snow, notice: "Snow was successfully updated." }
        format.json { render :show, status: :ok, location: @snow }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @snow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snows/1 or /snows/1.json
  def destroy
    @snow.destroy
    respond_to do |format|
      format.html { redirect_to snows_url, notice: "Snow was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snow
      @snow = Snow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def snow_params
      params.require(:snow).permit(:water)
    end
end
