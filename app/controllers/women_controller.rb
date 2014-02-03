class WomenController < ApplicationController
  #skip_before_filter :autorize


  def show
    @woman = Woman.find(params[:id])
  end

  def index
    @women = Woman.all
  end

  def new
    @woman = Woman.new
  end

  def create
      @woman = current_doctor.women.build(params[:woman])
      if @woman.save
        redirect_to woman_path(@woman)
      else
        render 'new'
      end
  end

  def edit
    @woman = Woman.find(params[:id])
  end

  def update
    @woman = Woman.find(params[:id])
    if @woman.update_attributes(params[:woman])
      redirect_to woman_path(@woman)
    else
      render 'edit'
    end
  end

  def destroy
    @woman = Woman.find(params[:id])
    @woman.destroy
    if @woman.errors.empty?
      redirect_to women_path
    else
      render current_page
    end
  end
end
