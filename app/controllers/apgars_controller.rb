# encoding: utf-8
class ApgarsController < ApplicationController
  skip_before_filter :role_doc, except: [:delete, :destroy]
  skip_before_filter :role_nach_doc
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
  def new
    @woman = Woman.find(params[:woman_id])
    @apgar = Apgar.new
    @child = Child.find(params[:child_id])
  end

  def create

    @apgar = Apgar.new(params[:apgar])
    @child = Child.find(params[:child_id])
    @child.apgars << @apgar
    if @apgar.save
      flash[:notice] = "Дані збережено"
      redirect_to woman_child_path(@child.woman_id, @child)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'new'
    end

  end

  def edit
    @woman = Woman.find(params[:woman_id])
    @apgar = Apgar.find(params[:id])
    @child = Child.find(params[:child_id])
  end

  def update
    @apgar = Apgar.find(params[:id])
    @child = Child.find(params[:child_id])
    if @apgar.update_attributes(params[:apgar])
      flash[:notice] = "Дані збережено"
      redirect_to woman_child_path(@child.woman_id, @a)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'edit'
    end
  end
end
