class AdminSessionsController < ApplicationController
    
  def new
    @admin_session = AdminSession.new
  end
  
  def create
    @admin_session = AdminSession.new(params[:admin_session])
    if @admin_session.save
      flash[:notice] = "Login Successfull"
      redirect_to admins_path
    else
      flash[:notice] = "Invalid login, please try gain"
      render :action => "new"
    end
  end

  def destroy
    @admin_session = current_admin_session
    @admin_session.destroy
    flash[:notice] = "Logout Successfull"
    redirect_to home_path
  end
end
