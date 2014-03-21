# encoding: utf-8
class PologsController < ApplicationController
  skip_before_filter :role_doc, except: [:delete, :destroy]
  skip_before_filter :role_nach_doc
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
  def new
    @polog = Polog.new
    @woman = Woman.find(params[:woman_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @polog = Polog.new(params[:polog])
    @woman = Woman.find(params[:woman_id])
    @woman.polog = @polog
    if @polog.save
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'new'
    end

  end

  def edit
    @polog = Polog.find(params[:id])
    @woman = Woman.find(params[:woman_id])
  end

  def update
    @polog = Polog.find(params[:id])
    @woman = Woman.find(params[:woman_id])
    if @polog.update_attributes(params[:polog])
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'edit'
    end
  end
end
