class ChildrenController < ApplicationController
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
      redirect_to woman_child_path(@woman, @child)
    else
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
      redirect_to woman_child_path(@woman, @child)
    else
      render 'edit'
    end
  end
end
