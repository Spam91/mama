# encoding: utf-8
class ProblemsController < ApplicationController
  skip_before_filter :role_doc, except: [:delete, :destroy]
  skip_before_filter :role_nach_doc
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
  def new
    @problem = Problem.new
    @child = Child.find(params[:child_id])
    @woman = Woman.find(params[:woman_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @problem = Problem.new(params[:problem])
    @child = Child.find(params[:child_id])
    @child.problem = @problem
    if @problem.save
      flash[:notice] = "Дані збережено"
      redirect_to woman_child_path(params[:woman_id], params[:child_id])
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'new'
    end

  end

  def edit
    @woman = Woman.find(params[:woman_id])
    @problem = Problem.find(params[:id])
    @child = Child.find(params[:child_id])
  end

  def update
    @problem = Problem.find(params[:id])
    if @problem.update_attributes(params[:problem])
      flash[:notice] = "Дані збережено"
      redirect_to woman_child_path(params[:woman_id], params[:child_id])
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'edit'
    end
  end
end
