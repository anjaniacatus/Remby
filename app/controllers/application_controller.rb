# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter {|c| Authorization.current_user = c.current_user}
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  helper_method :current_user, :is_admin?
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session) 
    @current_user_session = UserSession.find
  end

  def current_user
     return @current_user if defined?(@current_user)
     @current_user = current_user_session && current_user_session.record
  end

  def context_object
    return @context_object if defined?(@context_object)
    @context_objext = eval("@#{self.controller_name}") || eval("@#{self.controller_name.singularize}")
  end
  
  def is_admin?
  end
  
end
