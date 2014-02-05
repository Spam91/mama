class WomanInfosController < ApplicationController
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
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
      redirect_to woman_path(@woman)
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
    @woman = Woman.find(params[:woman_id])
    if @wi.update_attributes(params[:wi])
      redirect_to woman_path(@woman)
    else
      render 'edit'
    end
  end
end
