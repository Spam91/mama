class SessionsController < ApplicationController
  skip_before_filter :autorize

  def new
  end

  def create
    doctor = Doctor.find_by_fname(params[:fname])
    if doctor && doctor.authenticate(params[:password])
      session[:doctor_id] = doctor.id
      #flash[:notice] = "Logged in!"
      redirect_to doctor_path(current_doctor)
    else
      #flash.now[:error] = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:doctor_id] = nil
    #flash[:notice] = "Logged out!"
    redirect_to root_url
  end
end
