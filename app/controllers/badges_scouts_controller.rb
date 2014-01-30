class BadgesScoutsController < ApplicationController
  # GET /badges_scouts
  # GET /badges_scouts.json
  def index
    @badges_scouts = BadgesScout.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @badges_scouts }
    end
  end

  # GET /badges_scouts/1
  # GET /badges_scouts/1.json
  def show
    @badges_scout = BadgesScout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @badges_scout }
    end
  end

  # GET /badges_scouts/new
  # GET /badges_scouts/new.json
  def new
    @badges_scout = BadgesScout.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @badges_scout }
    end
  end

  # GET /badges_scouts/1/edit
  def edit
    @badges_scout = BadgesScout.find(params[:id])
  end

  # POST /badges_scouts
  # POST /badges_scouts.json
  def create
    @badges_scout = BadgesScout.new(params[:badges_scout])

    respond_to do |format|
      if @badges_scout.save
        format.html { redirect_to @badges_scout, notice: 'Badges scout was successfully created.' }
        format.json { render json: @badges_scout, status: :created, location: @badges_scout }
      else
        format.html { render action: "new" }
        format.json { render json: @badges_scout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /badges_scouts/1
  # PUT /badges_scouts/1.json
  def update
    @badges_scout = BadgesScout.find(params[:id])

    respond_to do |format|
      if @badges_scout.update_attributes(params[:badges_scout])
        format.html { redirect_to @badges_scout, notice: 'Badges scout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @badges_scout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /badges_scouts/1
  # DELETE /badges_scouts/1.json
  def destroy
    @badges_scout = BadgesScout.find(params[:id])
    @badges_scout.destroy

    respond_to do |format|
      format.html { redirect_to badges_scouts_url }
      format.json { head :no_content }
    end
  end
end
