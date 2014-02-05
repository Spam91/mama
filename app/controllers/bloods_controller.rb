class BloodsController < ApplicationController
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
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
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
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
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'edit'
    end
  end
end
