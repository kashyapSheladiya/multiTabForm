class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  helper_method :current_registration

  def current_registration
    @current_registration ||= Registration.find(session[:reg_id]) if session[:reg_id]
  end
end
