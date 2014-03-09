# encoding: utf-8
class OgladsController < ApplicationController
  skip_before_filter :role_doc, except: [:delete, :destroy]
  skip_before_filter :role_nach_doc
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
  def new
    @oglad = Oglad.new
    @oglad.diagnozs.build if @oglad.diagnozs.empty?
    @woman = Woman.find(params[:woman_id])
  end

  def create
    #@woman = Woman.new(params[:woman])

    @oglad = Oglad.new(params[:oglad])

    @woman = Woman.find(params[:woman_id])
    @woman.oglad = @oglad
    if @oglad.save
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'new'
    end

  end

  def edit
    @og = Oglad.find(params[:id])
    @woman = Woman.find(params[:woman_id])
  end

  def update
    @og = Oglad.find(params[:id])
    @woman = Woman.find(params[:woman_id])
    if @og.update_attributes(params[:og])
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'edit'
    end
  end
end
