class DiagnozsController < ApplicationController

  skip_before_filter :role_doc, except: [:delete, :destroy]
  skip_before_filter :role_nach_doc
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]

  def index
    @diagnozs = Diagnoz.all
    @mkhs = Admin::Mkh.all
  end

  def new
    @diagnoz = Diagnoz.new
    @diagnoz.diamkhs.build
    @woman = Woman.find(params[:woman_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diagnoz }
    end
  end

  def create
    @diagnoz = Diagnoz.new(params[:diagnoz])
    @woman = Woman.find(params[:woman_id])
    @woman.diagnozs << @diagnoz
    if @diagnoz.save
      redirect_to woman_path(@woman)
    else
      render 'new'
    end
  end
end
