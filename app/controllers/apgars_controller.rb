class ApgarsController < ApplicationController
  def new
    @a = Apgar.new
    @child = Child.find(params[:child_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @a = Apgar.new(params[:a])
    @child = Child.find(params[:child_id])
    @child.apgar = @a
    if @a.save
      redirect_to woman_child_path(@child.woman_id, @a)
    else
      render 'new'
    end

  end

  def edit
    @a = Apgar.find(params[:id])
    @child = Child.find(params[:child_id])
  end

  def update
    @a = Apgar.find(params[:id])
    @child = Child.find(params[:child_id])
    if @a.update_attributes(params[:a])
      redirect_to woman_child_path(@child.woman_id, @a)
    else
      render 'edit'
    end
  end
end
