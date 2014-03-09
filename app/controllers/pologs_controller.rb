# encoding: utf-8
class PologsController < ApplicationController
  skip_before_filter :role_doc, except: [:delete, :destroy]
  skip_before_filter :role_nach_doc
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
  def new
    @po = Polog.new
    @woman = Woman.find(params[:woman_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @po = Polog.new(params[:po])
    @woman = Woman.find(params[:woman_id])
    @woman.polog = @po
    if @po.save
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'new'
    end

  end

  def edit
    @po = Polog.find(params[:id])
    @woman = Woman.find(params[:woman_id])
  end

  def update
    @po = Polog.find(params[:id])
    @woman = Woman.find(params[:woman_id])
    if @po.update_attributes(params[:po])
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'edit'
    end
  end
end
