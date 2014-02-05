class OperationsController < ApplicationController
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
  def new
    @o = Operation.new
    @woman = Woman.find(params[:woman_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @o = Operation.new(params[:o])
    @woman = Woman.find(params[:woman_id])
    @woman.operation = @o
    if @o.save
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'new'
    end

  end

  def edit
    @o = Operation.find(params[:id])
    @woman = Woman.find(params[:woman_id])
  end

  def update
    @o = Operation.find(params[:id])
    @woman = Woman.find(params[:woman_id])
    if @o.update_attributes(params[:o])
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'edit'
    end
  end
end
