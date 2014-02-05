class ProblemsController < ApplicationController
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
  def new
    @problem = Problem.new
    @child = Child.find(params[:child_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @problem = Problem.new(params[:problem])
    @child = Child.find(params[:child_id])
    @child.problem = @problem
    if @problem.save
      redirect_to woman_child_path(params[:woman_id], params[:child_id])
    else
      render 'new'
    end

  end

  def edit
    @problem = Problem.find(params[:id])
    @child = Child.find(params[:child_id])
  end

  def update
    @problem = Problem.find(params[:id])
    if @problem.update_attributes(params[:problem])
      redirect_to woman_child_path(params[:woman_id], params[:child_id])
    else
      render 'edit'
    end
  end
end
