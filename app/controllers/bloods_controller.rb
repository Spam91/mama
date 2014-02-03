class BloodsController < ApplicationController
  def new
    @blood = Blood.new
    @woman = Woman.find(params[:woman_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @blood = Blood.new(params[:blood])
    @woman = Woman.find(params[:woman_id])
    @woman.blood = @blood
    if @blood.save
      redirect_to woman_path(@woman)
    else
      render 'new'
    end

  end

  def edit
    @blood = Blood.find(params[:id])
    @woman = Woman.find(params[:woman_id])
  end

  def update
    @blood = Blood.find(params[:id])
    @woman = Woman.find(params[:woman_id])
    if @blood.update_attributes(params[:blood])
      redirect_to woman_path(@woman)
    else
      render 'edit'
    end
  end
end
