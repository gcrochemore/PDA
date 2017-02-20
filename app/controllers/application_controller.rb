class ApplicationController < ActionController::Base
  include CanCan::ControllerAdditions
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|      
      format.json { head :forbidden, content_type: 'text/html' }        
      format.html { redirect_to after_sign_in_path_for(current_user), alert: exception.message }        
      format.js   { head :forbidden, content_type: 'text/html' }        
    end     
  end

  rescue_from ActiveRecord::RecordNotFound do |exception|
    respond_to do |format|      
      format.json { head :not_found, content_type: 'text/html' }        
      format.html { redirect_to after_sign_in_path_for(current_user), alert: "Enregistrement non trouvé" }        
      format.js   { head :not_found, content_type: 'text/html' }        
    end
  end
end