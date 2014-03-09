class Admin::NameOperationsController < ApplicationController
  # GET /admin/name_operations
  # GET /admin/name_operations.json
  def index
    @admin_name_operations = Admin::NameOperation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_name_operations }
    end
  end

  # GET /admin/name_operations/1
  # GET /admin/name_operations/1.json
  def show
    @admin_name_operation = Admin::NameOperation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_name_operation }
    end
  end

  # GET /admin/name_operations/new
  # GET /admin/name_operations/new.json
  def new
    @admin_name_operation = Admin::NameOperation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_name_operation }
    end
  end

  # GET /admin/name_operations/1/edit
  def edit
    @admin_name_operation = Admin::NameOperation.find(params[:id])
  end

  # POST /admin/name_operations
  # POST /admin/name_operations.json
  def create
    @admin_name_operation = Admin::NameOperation.new(params[:admin_name_operation])

    respond_to do |format|
      if @admin_name_operation.save
        format.html { redirect_to @admin_name_operation, notice: 'Name operation was successfully created.' }
        format.json { render json: @admin_name_operation, status: :created, location: @admin_name_operation }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_name_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/name_operations/1
  # PUT /admin/name_operations/1.json
  def update
    @admin_name_operation = Admin::NameOperation.find(params[:id])

    respond_to do |format|
      if @admin_name_operation.update_attributes(params[:admin_name_operation])
        format.html { redirect_to @admin_name_operation, notice: 'Name operation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_name_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/name_operations/1
  # DELETE /admin/name_operations/1.json
  def destroy
    @admin_name_operation = Admin::NameOperation.find(params[:id])
    @admin_name_operation.destroy

    respond_to do |format|
      format.html { redirect_to admin_name_operations_url }
      format.json { head :no_content }
    end
  end
end
