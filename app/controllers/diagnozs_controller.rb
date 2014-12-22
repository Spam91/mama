class DiagnozsController < ApplicationController
  # GET /diagnozs
  # GET /diagnozs.json
  def index
    @diagnozs = Diagnoz.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diagnozs }
    end
  end

  # GET /diagnozs/1
  # GET /diagnozs/1.json
  def show
    @diagnoz = Diagnoz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diagnoz }
    end
  end

  # GET /diagnozs/new
  # GET /diagnozs/new.json
  def new
    @diagnoz = Diagnoz.new
    @admin_mkh_groups = Admin::MkhGroup.all
    @diagnoz.diamkhs.build
    @woman = Woman.find(params[:woman_id])
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /diagnozs/1/edit
  def edit
    @diagnoz = Diagnoz.find(params[:id])
    @admin_mkh_groups = Admin::MkhGroup.all
    @woman = Woman.find(params[:woman_id])
  end

  # POST /diagnozs
  # POST /diagnozs.json
  def create
    @diagnoz = Diagnoz.new(params[:diagnoz])
    @woman = Woman.find(params[:woman_id])
    @woman.diagnozs << @diagnoz
    respond_to do |format|
      if @diagnoz.save
        params[:diamkhs].each do |p|
          @diamkh = Diamkh.new
          @diamkh.mkh_id = p
          @diamkh.diagnoz_id = @diagnoz.id
          @diamkh.save
        end
        format.html { redirect_to [@woman,@diagnoz], notice: 'Diagnoz was successfully created.' }
        format.json { render json: @diagnoz, status: :created, location: @diagnoz }
      else
        format.html { render action: "new" }
        format.json { render json: @diagnoz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diagnozs/1
  # PUT /diagnozs/1.json
  def update
    @diagnoz = Diagnoz.find(params[:id])
    @woman = Woman.find(params[:woman_id])

    respond_to do |format|
      if @diagnoz.update_attributes(params[:diagnoz])
        @diamkhs = Diamkh.where('diagnoz_id' => @diagnoz.id)
        @diamkhs.destroy_all
        params[:diamkhs].each do |p|
          @diamkh = Diamkh.new
          @diamkh.mkh_id = p
          @diamkh.diagnoz_id = @diagnoz.id
          @diamkh.save
        end
        format.html { redirect_to [@woman, @diagnoz], notice: 'Diagnoz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @diagnoz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnozs/1
  # DELETE /diagnozs/1.json
  def destroy
    @diagnoz = Diagnoz.find(params[:id])
    @diagnoz.destroy

    respond_to do |format|
      format.html { redirect_to diagnozs_url }
      format.json { head :no_content }
    end
  end
end
