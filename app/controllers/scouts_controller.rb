class ScoutsController < ApplicationController
  #before_action :set_scout, only: [:show, :edit, :update, :destroy]

  # GET /scouts
  # GET /scouts.json
  def index
    @scouts = Scout.all
  end
  def report_on_everything
  end
  # GET /scouts/1
  # GET /scouts/1.json
  def show
  end

  # GET /scouts/new
  def new
    @scout = Scout.new
  end

  # GET /scouts/1/edit
  def edit
  end

  # POST /scouts
  # POST /scouts.json
  def create
    @scout = Scout.new(scout_params)

    respond_to do |format|
      if @scout.save
        format.html { redirect_to @scout, notice: 'Scout was successfully created.' }
        format.json { render action: 'show', status: :created, location: @scout }
      else
        format.html { render action: 'new' }
        format.json { render json: @scout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scouts/1
  # PATCH/PUT /scouts/1.json
  def update
    respond_to do |format|
      if @scout.update(scout_params)
        format.html { redirect_to @scout, notice: 'Scout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @scout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scouts/1
  # DELETE /scouts/1.json
  def destroy
    @scout.destroy
    respond_to do |format|
      format.html { redirect_to scouts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scout
      @scout = Scout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scout_params
      params.require(:scout).permit(:first_name, :last_name, :member_since, :leader_id, :chapter_id)
    end
end
