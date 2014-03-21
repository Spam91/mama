# encoding: utf-8
class WomenController < ApplicationController
  #skip_before_filter :autorize
  skip_before_filter :role_doc, except: [:delete, :destroy]
  skip_before_filter :role_nach_doc
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]

  def show
    @woman = Woman.find(params[:id])
  end

  def index
    @women = Woman.all
  end

  def firstpage
    @woman = Woman.find(params[:woman_id])
  end

  def new
    @woman = Woman.new
    if Woman.last.blank?
      @last_h_id = 0
    else
      @last_h_id = Woman.order("history_id ASC").last.history_id
    end
    @last_h_id+=1
  end

  def create
      @woman = Woman.new(params[:woman])
      if @woman.save
        flash[:notice] = "Дані збережено"
        redirect_to woman_path(@woman)
      else
        flash.now[:error] = "Не правильно введені дані"
        render 'new'
      end
  end

  def edit
    @woman = Woman.find(params[:id])
  end

  def update
    @woman = Woman.find(params[:id])
    if @woman.update_attributes(params[:woman])
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'edit'
    end
  end

  def destroy
    @woman = Woman.find(params[:id])
    @woman.destroy
    if @woman.errors.empty?
      redirect_to women_path
    else
      render current_page
    end
  end
end
