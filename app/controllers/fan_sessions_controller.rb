class FanSessionsController < ApplicationController

  def new
    @fan_session = FanSession.new
  end

  def create
    @fan_session = FanSession.new(params[:fan_session])
    if @fan_session.save
      flash[:notice] = "Login Successfull"
      redirect_to fan_path(current_fan)
    else
      flash[:notice] = "Invalid login, please try gain"
      render :action => "new"
    end
  end

  def destroy
    @fan_session = current_fan_session
    @fan_session.destroy
    flash[:notice] = "Logout Successfull"
    redirect_to home_path
  end
end
