class PologsController < ApplicationController
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
      redirect_to woman_path(@woman)
    else
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
      redirect_to woman_path(@woman)
    else
      render 'edit'
    end
  end
end
