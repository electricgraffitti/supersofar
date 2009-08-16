class FanStatusesController < ApplicationController

  # GET /fan_statuses/new
  # GET /fan_statuses/new.xml
  def new
    @fan_status = FanStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fan_status }
    end
  end

  # POST /fan_statuses
  # POST /fan_statuses.xml
  def create
    @fan_status = FanStatus.new(params[:fan_status])

    respond_to do |format|
      if @fan_status.save
        flash[:notice] = 'FanStatus was successfully created.'
        format.html { redirect_to fan_path(current_fan) }
        format.xml  { render :xml => @fan_status, :status => :created, :location => @fan_status }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fan_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fan_statuses/1
  # DELETE /fan_statuses/1.xml
  def destroy
    @fan_status = FanStatus.find(params[:id])
    @fan_status.destroy

    respond_to do |format|
      format.html { redirect_to(fan_statuses_url) }
      format.xml  { head :ok }
    end
  end
end
