# encoding: utf-8
class OperationsController < ApplicationController
  skip_before_filter :role_doc, except: [:delete, :destroy]
  skip_before_filter :role_nach_doc
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
  def new
    @operation = Operation.new
    @woman = Woman.find(params[:woman_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @operation = Operation.new(params[:operation])
    @woman = Woman.find(params[:woman_id])
    @noper = Admin::NameOperation.find(params[:operation][:name_operation_id])
    @nzneb = Admin::NameZnebol.find(params[:operation][:name_znebol_id])
    @surg = Admin::Surgeon.find(params[:operation][:surgeon_id])
    @woman.operations << @operation
    @noper.operations << @operation
    @nzneb.operations << @operation
    @surg.operations << @operation
    if @operation.save
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'new'
    end

  end

  def edit
    @operation = Operation.find(params[:id])
    @woman = Woman.find(params[:woman_id])
  end

  def update
    @operation = Operation.find(params[:id])
    @woman = Woman.find(params[:woman_id])
    if @operation.update_attributes(params[:operation])
      flash[:notice] = "Дані збережено"
      redirect_to woman_path(@woman)
    else
      flash.now[:error] = "Не правильно введені дані"
      render 'edit'
    end
  end
end
