class AccessiblePlacesController < ApplicationController
  # GET /accessible_places
  # GET /accessible_places.json
  def index
    @accessible_places = AccessiblePlace.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accessible_places }
    end
  end

  # GET /accessible_places/1
  # GET /accessible_places/1.json
  def show
    @accessible_place = AccessiblePlace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @accessible_place }
    end
  end

  # GET /accessible_places/new
  # GET /accessible_places/new.json
  def new
    @accessible_place = AccessiblePlace.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accessible_place }
    end
  end

  # GET /accessible_places/1/edit
  def edit
    @accessible_place = AccessiblePlace.find(params[:id])
  end

  # POST /accessible_places
  # POST /accessible_places.json
  def create
    @accessible_place = AccessiblePlace.new(params[:accessible_place])

    respond_to do |format|
      if @accessible_place.save
        format.html { redirect_to @accessible_place, notice: 'Accessible place was successfully created.' }
        format.json { render json: @accessible_place, status: :created, location: @accessible_place }
      else
        format.html { "new" }
        format.json { render json: @accessible_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /accessible_places/1
  # PUT /accessible_places/1.json
  def update
    @accessible_place = AccessiblePlace.find(params[:id])

    respond_to do |format|
      if @accessible_place.update_attributes(params[:accessible_place])
        format.html { redirect_to @accessible_place, notice: 'Accessible place was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { "edit" }
        format.json { render json: @accessible_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accessible_places/1
  # DELETE /accessible_places/1.json
  def destroy
    @accessible_place = AccessiblePlace.find(params[:id])
    @accessible_place.destroy

    respond_to do |format|
      format.html { redirect_to accessible_places_url }
      format.json { head :no_content }
    end
  end
end
