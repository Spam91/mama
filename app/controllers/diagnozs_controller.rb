class DiagnozsController < ApplicationController
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
      redirect_to woman_path(@woman)
    else
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
      redirect_to woman_path(@woman)
    else
      render 'edit'
    end
  end
end