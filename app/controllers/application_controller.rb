class ApplicationController < ActionController::Base
  before_filter :autorize
  protect_from_forgery

  protected

  def autorize
    unless Doctor.find(session[:doctor_id])
      #flash[:notice] = "You are not regist"
      redirect_to log_in_path
    end
  end

  private

  def current_doctor
    @current_doctor ||= Doctor.find(session[:doctor_id]) if session[:doctor_id]
  end

  helper_method :current_doctor
end
