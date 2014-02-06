# encoding: utf-8
class ApgarsController < ApplicationController
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
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
      flash[:notice] = "Дані збережено"
      redirect_to woman_child_path(@child.woman_id, @a)
    else
      flash.now[:error] = "Не правильно введені дані"
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
      flash[:notice] = "Дані збережено"
      redirect_to woman_child_path(@child.woman_id, @a)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'edit'
    end
  end
end
