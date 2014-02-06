# encoding: utf-8
class DiagnozsController < ApplicationController
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
  def new
    @d = Diagnoz.new
    @woman = Woman.find(params[:woman_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @d = Diagnoz.new(params[:d])
    @woman = Woman.find(params[:woman_id])
    @woman.diagnoz = @d
    if @d.save
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'new'
    end

  end

  def edit
    @d = Diagnoz.find(params[:id])
    @woman = Woman.find(params[:woman_id])
  end

  def update
    @d = Diagnoz.find(params[:id])
    @woman = Woman.find(params[:woman_id])
    if @d.update_attributes(params[:d])
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'edit'
    end
  end
end