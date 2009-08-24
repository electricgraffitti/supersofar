class FanPhotosController < ApplicationController
  
  before_filter :require_fan
  
  # GET /fan_photos
  # GET /fan_photos.xml
  def index
    @fan_photos = FanPhoto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fan_photos }
    end
  end

  # GET /fan_photos/1
  # GET /fan_photos/1.xml
  def show
    @fan_photo = FanPhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fan_photo }
    end
  end

  # GET /fan_photos/new
  # GET /fan_photos/new.xml
  def new
    @fan_photo = FanPhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fan_photo }
    end
  end

  # GET /fan_photos/1/edit
  def edit
    @fan_photo = FanPhoto.find(params[:id])
  end

  # POST /fan_photos
  # POST /fan_photos.xml
  def create
    @fan_photo = FanPhoto.new(params[:fan_photo])

    respond_to do |format|
      if @fan_photo.save
        flash[:notice] = 'FanPhoto was successfully created.'
        format.html { redirect_to(fan_path(current_fan)) }
        format.xml  { render :xml => @fan_photo, :status => :created, :location => @fan_photo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fan_photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fan_photos/1
  # PUT /fan_photos/1.xml
  def update
    @fan_photo = FanPhoto.find(params[:id])

    respond_to do |format|
      if @fan_photo.update_attributes(params[:fan_photo])
        flash[:notice] = 'FanPhoto was successfully updated.'
        format.html { redirect_to(@fan_photo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fan_photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fan_photos/1
  # DELETE /fan_photos/1.xml
  def destroy
    @fan_photo = FanPhoto.find(params[:id])
    @fan_photo.destroy

    respond_to do |format|
      format.html { redirect_to(fan_photos_url) }
      format.xml  { head :ok }
    end
  end
end
