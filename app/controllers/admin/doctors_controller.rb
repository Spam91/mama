# encoding: utf-8
class Admin::DoctorsController < ApplicationController

  def index
    @doctor = Admin::Doctor.all
  end

  def show
    @doctor = Admin::Doctor.find(params[:id])
  end

  def new
    @doctor = Admin::Doctor.new
  end

  def create
    @doctor = Admin::Doctor.new(params[:doctor])
    if @doctor.save
      flash[:notice] = "Add new doctor"
      redirect_to :root
    else
      flash.now[:error] = "Invalid input"
      render "new"
    end
  end
end
