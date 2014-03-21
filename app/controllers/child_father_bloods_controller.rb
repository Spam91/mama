class ChildFatherBloodsController < ApplicationController
  # GET /child_father_bloods/new
  # GET /child_father_bloods/new.json
  def new
    @child_father_blood = ChildFatherBlood.new
    @child = Child.find(params[:child_id])
    @woman = Woman.find(params[:woman_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @child_father_blood }
    end
  end

  # GET /child_father_bloods/1/edit
  def edit
    @child_father_blood = ChildFatherBlood.find(params[:id])
    @child = Child.find(params[:child_id])
    @woman = Woman.find(params[:woman_id])
  end

  # POST /child_father_bloods
  # POST /child_father_bloods.json
  def create
    @child = Child.find(params[:child_id])
    @woman = Woman.find(params[:woman_id])
    @child_father_blood = ChildFatherBlood.new(params[:child_father_blood])
    @child.child_father_blood = @child_father_blood
    respond_to do |format|
      if @child_father_blood.save
        format.html { redirect_to woman_child_path(@woman, @child)}
        format.json { render json: @child_father_blood, status: :created, location: @child_father_blood }
      else
        format.html { render action: "new" }
        format.json { render json: @child_father_blood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /child_father_bloods/1
  # PUT /child_father_bloods/1.json
  def update
    @child = Child.find(params[:child_id])
    @woman = Woman.find(params[:woman_id])
    @child_father_blood = ChildFatherBlood.find(params[:id])

    respond_to do |format|
      if @child_father_blood.update_attributes(params[:child_father_blood])
        format.html { redirect_to woman_child_path(@woman, @child)}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @child_father_blood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_father_bloods/1
  # DELETE /child_father_bloods/1.json
  def destroy
    @child_father_blood = ChildFatherBlood.find(params[:id])
    @child_father_blood.destroy

    respond_to do |format|
      format.html { redirect_to child_father_bloods_url }
      format.json { head :no_content }
    end
  end
end
