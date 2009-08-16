# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  #protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password, :password_confirmation
  helper_method :current_admin_session, :current_admin, :current_fan, :current_fan_session, :super?

  private
  
    def current_fan_session
      return @current_fan_session if defined?(@current_fan_session)
      @current_fan_session = FanSession.find
    end

    def current_fan
      return @current_fan if defined?(@current_fan)
      @current_fan = current_fan_session && current_fan_session.record
    end
  
    def require_fan
      unless current_fan
        store_location
        flash[:notice] = "You must be logged in to access this page"
        redirect_to new_fan_session_url
        return false
      end
    end

    def require_no_fan
      if current_fan
        store_location
        flash[:notice] = "You must be logged out to access this page"
        redirect_to account_url
        return false
      end
    end
  
    def current_admin_session
      return @current_admin_session if defined?(@current_admin_session)
      @current_admin_session = AdminSession.find
    end

    def current_admin
      return @current_admin if defined?(@current_admin)
      @current_admin = current_admin_session && current_admin_session.record
    end
    
    def require_admin
      unless current_admin
        store_location
        flash[:notice] = "You must be logged in to access this page"
        redirect_to new_admin_session_url
        return false
      end
    end
 
    def require_no_admin
      if current_admin
        store_location
        flash[:notice] = "You must be logged out to access this page"
        redirect_to account_url
        return false
      end
    end
    
    def store_location
      session[:return_to] = request.request_uri
    end
    
    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end
  
  protected
  
  def auth_super
    unless super?
      flash[:error] = "You are not the super!"
      redirect_to home_path
      false
    end
  end
  
  def super?
    authenticate_or_request_with_http_basic do |username, password|
      username == APP['username'] && password == APP['password']
    end
  end
  
end
