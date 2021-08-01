class FireController < ApplicationController
  before_action :set_fire, only: %i[ show edit update destroy ]
  def index
    @fires = Fire.all
  end

  # GET /snows/1 or /snows/1.json
  def show
  end

  # GET /snows/new
  def new
    @fire = Fire.new
  end

  # GET /snows/1/edit
  def edit
  end

  # POST /snows or /snows.json
  def create
    @fire = Fire.new(fire_params)

    respond_to do |format|
      if @fire.save
        format.html { redirect_to fires_url }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @snow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snows/1 or /snows/1.json
  def update
    respond_to do |format|
      if @fire.update(fire_params)
        format.html { redirect_to @fire, notice: "fire was successfully updated." }
        format.json { render :show, status: :ok, location: @fire }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snows/1 or /snows/1.json
  def destroy
    @fire.destroy
    respond_to do |format|
      format.html { redirect_to fires_url, notice: "fire was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fire
      @snow = Fire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fire_params
      params.require(:fire).permit(:coal)
    end
end
