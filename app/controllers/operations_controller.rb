class OperationsController < ApplicationController
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
      redirect_to woman_path(@woman)
    else
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
      redirect_to woman_path(@woman)
    else
      render 'edit'
    end
  end
end
