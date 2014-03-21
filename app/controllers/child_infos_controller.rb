class ChildInfosController < ApplicationController
  # GET /child_infos
  # GET /child_infos.json
  def index
    @child_infos = ChildInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @child_infos }
    end
  end

  # GET /child_infos/1
  # GET /child_infos/1.json
  def show
    @child_info = ChildInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @child_info }
    end
  end

  # GET /child_infos/new
  # GET /child_infos/new.json
  def new
    @child_info = ChildInfo.new
    @child = Child.find(params[:child_id])
    @woman = Woman.find(params[:woman_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @child_info }
    end
  end

  # GET /child_infos/1/edit
  def edit
    @child = Child.find(params[:child_id])
    @woman = Woman.find(params[:woman_id])
    @child_info = ChildInfo.find(params[:id])
  end

  # POST /child_infos
  # POST /child_infos.json
  def create
    @child = Child.find(params[:child_id])
    @woman = Woman.find(params[:woman_id])
    @child_info = ChildInfo.new(params[:child_info])
    @child.child_info = @child_info
    respond_to do |format|
      if @child_info.save
        format.html { redirect_to woman_child_path(@woman, @child)}
        format.json { render json: @child_info, status: :created, location: @child_info }
      else
        format.html { render action: "new" }
        format.json { render json: @child_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /child_infos/1
  # PUT /child_infos/1.json
  def update
    @child = Child.find(params[:child_id])
    @woman = Woman.find(params[:woman_id])
    @child_info = ChildInfo.find(params[:id])

    respond_to do |format|
      if @child_info.update_attributes(params[:child_info])
        format.html { redirect_to woman_child_path(@woman, @child)}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @child_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_infos/1
  # DELETE /child_infos/1.json
  def destroy
    @child_info = ChildInfo.find(params[:id])
    @child_info.destroy

    respond_to do |format|
      format.html { redirect_to child_infos_url }
      format.json { head :no_content }
    end
  end
end
