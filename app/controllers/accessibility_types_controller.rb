class AccessibilityTypesController < ApplicationController
  # GET /accessibility_types
  # GET /accessibility_types.json
  def index
    @accessibility_types = AccessibilityType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accessibility_types }
    end
  end

  # GET /accessibility_types/1
  # GET /accessibility_types/1.json
  def show
    @accessibility_type = AccessibilityType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @accessibility_type }
    end
  end

  # GET /accessibility_types/new
  # GET /accessibility_types/new.json
  def new
    @accessibility_type = AccessibilityType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accessibility_type }
    end
  end

  # GET /accessibility_types/1/edit
  def edit
    @accessibility_type = AccessibilityType.find(params[:id])
  end

  # POST /accessibility_types
  # POST /accessibility_types.json
  def create
    @accessibility_type = AccessibilityType.new(params[:accessibility_type])

    respond_to do |format|
      if @accessibility_type.save
        format.html { redirect_to @accessibility_type, notice: 'Accessibility type was successfully created.' }
        format.json { render json: @accessibility_type, status: :created, location: @accessibility_type }
      else
        format.html { "new" }
        format.json { render json: @accessibility_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /accessibility_types/1
  # PUT /accessibility_types/1.json
  def update
    @accessibility_type = AccessibilityType.find(params[:id])

    respond_to do |format|
      if @accessibility_type.update_attributes(params[:accessibility_type])
        format.html { redirect_to @accessibility_type, notice: 'Accessibility type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { "edit" }
        format.json { render json: @accessibility_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accessibility_types/1
  # DELETE /accessibility_types/1.json
  def destroy
    @accessibility_type = AccessibilityType.find(params[:id])
    @accessibility_type.destroy

    respond_to do |format|
      format.html { redirect_to accessibility_types_url }
      format.json { head :no_content }
    end
  end
end
