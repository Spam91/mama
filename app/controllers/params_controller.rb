class ParamsController < ApplicationController
  def new
    @par = Param.new
    @child = Child.find(params[:child_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @par = Param.new(params[:par])
    @child = Child.find(params[:child_id])
    @child.param = @par
    if @par.save
      redirect_to woman_child_path(params[:woman_id], params[:child_id])
    else
      render 'new'
    end

  end

  def edit
    @par = Param.find(params[:id])
    @child = Child.find(params[:child_id])
  end

  def update
    @par = Param.find(params[:id])
    if @par.update_attributes(params[:par])
      redirect_to woman_child_path(params[:woman_id], params[:child_id])
    else
      render 'edit'
    end
  end
end
