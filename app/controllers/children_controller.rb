# encoding: utf-8
class ChildrenController < ApplicationController
  skip_before_filter :role_doc, except: [:delete, :destroy]
  skip_before_filter :role_nach_doc
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
  def show
  	@child = Child.find(params[:id])
    @woman = Woman.find(params[:woman_id])
  end

  def new
    @child = Child.new
    @woman = Woman.find(params[:woman_id])
    if Child.last.blank?
      @last_h_c_id = 0
    else
      @last_h_c_id = Child.order("history_id ASC").last.history_id
    end
  end

  def create
    #@woman = Woman.new(params[:woman])
    @child = Child.new(params[:child])
    @woman = Woman.find(params[:woman_id])
    @woman.children << @child
    if @child.save
      flash[:notice] = "Дані збережено"
      redirect_to woman_child_path(@woman, @child.id)
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
