class Admin::SurgeonsController < ApplicationController
  # GET /admin/surgeons
  # GET /admin/surgeons.json
  def index
    @admin_surgeons = Admin::Surgeon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_surgeons }
    end
  end

  # GET /admin/surgeons/1
  # GET /admin/surgeons/1.json
  def show
    @admin_surgeon = Admin::Surgeon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_surgeon }
    end
  end

  # GET /admin/surgeons/new
  # GET /admin/surgeons/new.json
  def new
    @admin_surgeon = Admin::Surgeon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_surgeon }
    end
  end

  # GET /admin/surgeons/1/edit
  def edit
    @admin_surgeon = Admin::Surgeon.find(params[:id])
  end

  # POST /admin/surgeons
  # POST /admin/surgeons.json
  def create
    @admin_surgeon = Admin::Surgeon.new(params[:admin_surgeon])

    respond_to do |format|
      if @admin_surgeon.save
        format.html { redirect_to @admin_surgeon, notice: 'Surgeon was successfully created.' }
        format.json { render json: @admin_surgeon, status: :created, location: @admin_surgeon }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_surgeon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/surgeons/1
  # PUT /admin/surgeons/1.json
  def update
    @admin_surgeon = Admin::Surgeon.find(params[:id])

    respond_to do |format|
      if @admin_surgeon.update_attributes(params[:admin_surgeon])
        format.html { redirect_to @admin_surgeon, notice: 'Surgeon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_surgeon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/surgeons/1
  # DELETE /admin/surgeons/1.json
  def destroy
    @admin_surgeon = Admin::Surgeon.find(params[:id])
    @admin_surgeon.destroy

    respond_to do |format|
      format.html { redirect_to admin_surgeons_url }
      format.json { head :no_content }
    end
  end
end
