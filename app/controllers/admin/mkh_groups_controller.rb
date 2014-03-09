class Admin::MkhGroupsController < ApplicationController
  # GET /admin/mkh_groups
  # GET /admin/mkh_groups.json
  def index
    @admin_mkh_groups = Admin::MkhGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_mkh_groups }
    end
  end

  # GET /admin/mkh_groups/1
  # GET /admin/mkh_groups/1.json
  def show
    @admin_mkh_group = Admin::MkhGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_mkh_group }
    end
  end

  # GET /admin/mkh_groups/new
  # GET /admin/mkh_groups/new.json
  def new
    @admin_mkh_group = Admin::MkhGroup.new
    @admin_mkh_group.mkhs.build
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_mkh_group }
    end
  end

  # GET /admin/mkh_groups/1/edit
  def edit
    @admin_mkh_group = Admin::MkhGroup.find(params[:id])
  end

  # POST /admin/mkh_groups
  # POST /admin/mkh_groups.json
  def create
    @admin_mkh_group = Admin::MkhGroup.new(params[:admin_mkh_group])

    respond_to do |format|
      if @admin_mkh_group.save
        format.html { redirect_to @admin_mkh_group, notice: 'Mkh group was successfully created.' }
        format.json { render json: @admin_mkh_group, status: :created, location: @admin_mkh_group }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_mkh_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/mkh_groups/1
  # PUT /admin/mkh_groups/1.json
  def update
    @admin_mkh_group = Admin::MkhGroup.find(params[:id])

    respond_to do |format|
      if @admin_mkh_group.update_attributes(params[:admin_mkh_group])
        format.html { redirect_to @admin_mkh_group, notice: 'Mkh group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_mkh_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/mkh_groups/1
  # DELETE /admin/mkh_groups/1.json
  def destroy
    @admin_mkh_group = Admin::MkhGroup.find(params[:id])
    @admin_mkh_group.destroy

    respond_to do |format|
      format.html { redirect_to admin_mkh_groups_url }
      format.json { head :no_content }
    end
  end
end
