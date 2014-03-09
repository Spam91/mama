class Admin::NameZnebolsController < ApplicationController
  # GET /admin/name_znebols
  # GET /admin/name_znebols.json
  def index
    @admin_name_znebols = Admin::NameZnebol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_name_znebols }
    end
  end

  # GET /admin/name_znebols/1
  # GET /admin/name_znebols/1.json
  def show
    @admin_name_znebol = Admin::NameZnebol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_name_znebol }
    end
  end

  # GET /admin/name_znebols/new
  # GET /admin/name_znebols/new.json
  def new
    @admin_name_znebol = Admin::NameZnebol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_name_znebol }
    end
  end

  # GET /admin/name_znebols/1/edit
  def edit
    @admin_name_znebol = Admin::NameZnebol.find(params[:id])
  end

  # POST /admin/name_znebols
  # POST /admin/name_znebols.json
  def create
    @admin_name_znebol = Admin::NameZnebol.new(params[:admin_name_znebol])

    respond_to do |format|
      if @admin_name_znebol.save
        format.html { redirect_to @admin_name_znebol, notice: 'Name znebol was successfully created.' }
        format.json { render json: @admin_name_znebol, status: :created, location: @admin_name_znebol }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_name_znebol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/name_znebols/1
  # PUT /admin/name_znebols/1.json
  def update
    @admin_name_znebol = Admin::NameZnebol.find(params[:id])

    respond_to do |format|
      if @admin_name_znebol.update_attributes(params[:admin_name_znebol])
        format.html { redirect_to @admin_name_znebol, notice: 'Name znebol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_name_znebol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/name_znebols/1
  # DELETE /admin/name_znebols/1.json
  def destroy
    @admin_name_znebol = Admin::NameZnebol.find(params[:id])
    @admin_name_znebol.destroy

    respond_to do |format|
      format.html { redirect_to admin_name_znebols_url }
      format.json { head :no_content }
    end
  end
end
