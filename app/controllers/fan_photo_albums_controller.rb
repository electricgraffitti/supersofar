class FanPhotoAlbumsController < ApplicationController
  
  before_filter :require_fan, :except => [:show]
  
  # GET /fan_photo_albums
  # GET /fan_photo_albums.xml
  def index
    if current_fan
    redirect_to fan_photo_album_path(current_fan)
   else
     flash[:notice] = 'Please Become a Super Fan To View Other Fans'
     redirect_to new_fan_path
    end
    @fan_photo_albums = FanPhotoAlbum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fan_photo_albums }
    end
  end

  # GET /fan_photo_albums/1
  # GET /fan_photo_albums/1.xml
  def show
    @fan_photo_album = FanPhotoAlbum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fan_photo_album }
    end
  end

  # GET /fan_photo_albums/new
  # GET /fan_photo_albums/new.xml
  def new
    @fan_photo_album = FanPhotoAlbum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fan_photo_album }
    end
  end

  # GET /fan_photo_albums/1/edit
  def edit
    @fan_photo_album = FanPhotoAlbum.find(params[:id])
  end

  # POST /fan_photo_albums
  # POST /fan_photo_albums.xml
  def create
    @fan_photo_album = FanPhotoAlbum.new(params[:fan_photo_album])

    respond_to do |format|
      if @fan_photo_album.save
        flash[:notice] = 'FanPhotoAlbum was successfully created.'
        format.html { redirect_to(new_fan_photo_path) }
        format.xml  { render :xml => @fan_photo_album, :status => :created, :location => @fan_photo_album }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fan_photo_album.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fan_photo_albums/1
  # PUT /fan_photo_albums/1.xml
  def update
    @fan_photo_album = FanPhotoAlbum.find(params[:id])

    respond_to do |format|
      if @fan_photo_album.update_attributes(params[:fan_photo_album])
        flash[:notice] = 'FanPhotoAlbum was successfully updated.'
        format.html { redirect_to(@fan_photo_album) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fan_photo_album.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fan_photo_albums/1
  # DELETE /fan_photo_albums/1.xml
  def destroy
    @fan_photo_album = FanPhotoAlbum.find(params[:id])
    @fan_photo_album.destroy

    respond_to do |format|
      format.html { redirect_to(fan_photo_albums_url) }
      format.xml  { head :ok }
    end
  end
end
