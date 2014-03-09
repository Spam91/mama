# encoding: utf-8
class SessionsController < ApplicationController
  skip_before_filter :autorize
  skip_before_filter :role_doc
  skip_before_filter :role_nach_doc


  def new
  end

  def create
    doctor = Admin::Doctor.find_by_fname(params[:fname])
    if doctor && doctor.authenticate(params[:password])
      session[:doctor_id] = doctor.id
      flash[:notice] = "Ви успішно виконали вхід"
      redirect_to admin_doctor_path(current_doctor)
    else
      flash.now[:error] = "Не правильно введені дані"
      render "new"
    end
  end

  def destroy
    session[:doctor_id] = nil
    flash[:notice] = "Logged out!"
    redirect_to root_url
  end
end
