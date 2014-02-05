class ApplicationController < ActionController::Base
  before_filter :autorize
  protect_from_forgery

  protected

  def wr_to_hist_doct
    @dh = Doctorhistory.new
    if params[:woman_id]
      wi = params[:woman_id]
    else
      wi = params[:id]
    end
    @dh = current_doctor.doctorhistorys.build(date: DateTime.current, act: self.action_name, type: self.controller_name, woman_id: wi)
    @dh.save
  end

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
