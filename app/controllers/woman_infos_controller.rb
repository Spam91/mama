class WomanInfosController < ApplicationController
  def new
    @wi = WomanInfo.new
    @woman = Woman.find(params[:woman_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @wi = WomanInfo.new(params[:wi])
    @woman = Woman.find(params[:woman_id])
    @woman.woman_info = @wi
    if @wi.save
      redirect_to women_path
    else
      render 'new'
    end

  end

  def edit
    @wi = WomanInfo.find(params[:id])
    @woman = Woman.find(params[:woman_id])
  end

  def update
    @wi = WomanInfo.find(params[:id])
    if @wi.update_attributes(params[:wi])
      redirect_to women_path
    else
      render 'edit'
    end
  end
end
