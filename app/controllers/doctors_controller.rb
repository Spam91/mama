class DoctorsController < ApplicationController
  skip_before_filter :autorize

  def index
    @doctor = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(params[:doctor])
    if @doctor.save
      #flash[:notice] = "Add new user"
      redirect_to :root
    else
      #flash.now[:error] = "Invalid input"
      render "new"
    end
  end
end
