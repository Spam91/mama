class ChildrenController < ApplicationController
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
  def show
  	@child = Child.find(params[:id])
    @woman = Woman.find(params[:woman_id])
  end

  def new
    @child = Child.new
    @woman = Woman.find(params[:woman_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @child = Child.new(params[:child])
    @woman = Woman.find(params[:woman_id])
    @woman.children << @child
    if @child.save
      flash[:notice] = "Дані збережено"
      redirect_to woman_child_path(@woman, @child)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'new'
    end

  end

  def edit
    @child = Child.find(params[:id])
    @woman = Woman.find(params[:woman_id])
  end

  def update
    @child = Child.find(params[:id])
    @woman = Woman.find(params[:woman_id])
    if @child.update_attributes(params[:child])
      flash[:notice] = "Дані збережено"
      redirect_to woman_child_path(@woman, @child)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'edit'
    end
  end
end
