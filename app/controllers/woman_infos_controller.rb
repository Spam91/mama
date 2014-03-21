# encoding: utf-8
class WomanInfosController < ApplicationController
  skip_before_filter :role_doc, except: [:delete, :destroy]
  skip_before_filter :role_nach_doc
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
  def new
    @woman_info = WomanInfo.new
    @woman = Woman.find(params[:woman_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @woman_info = WomanInfo.new(params[:woman_info])
    @woman = Woman.find(params[:woman_id])
    @woman.woman_info = @woman_info
    if @woman_info.save
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'new'
    end

  end

  def edit
    @woman_info = WomanInfo.find(params[:id])
    @woman = Woman.find(params[:woman_id])
  end

  def update
    @woman_info = WomanInfo.find(params[:id])
    @woman = Woman.find(params[:woman_id])
    if @woman_info.update_attributes(params[:woman_info])
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'edit'
    end
  end
end
