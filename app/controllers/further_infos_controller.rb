class FurtherInfosController < ApplicationController
  # GET /further_infos
  # GET /further_infos.xml
  def index
    @further_infos = FurtherInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @further_infos }
    end
  end

  # GET /further_infos/1
  # GET /further_infos/1.xml
  def show
    @further_info = FurtherInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @further_info }
    end
  end

  # GET /further_infos/new
  # GET /further_infos/new.xml
  def new
    @further_info = FurtherInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @further_info }
    end
  end

  # GET /further_infos/1/edit
  def edit
    @further_info = FurtherInfo.find(params[:id])
  end

  # POST /further_infos
  # POST /further_infos.xml
  def create
    @further_info = FurtherInfo.new(params[:further_info])

    respond_to do |format|
      if @further_info.save
        flash[:notice] = 'FurtherInfo was successfully created.'
        format.html { redirect_to(@further_info) }
        format.xml  { render :xml => @further_info, :status => :created, :location => @further_info }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @further_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /further_infos/1
  # PUT /further_infos/1.xml
  def update
    @further_info = FurtherInfo.find(params[:id])

    respond_to do |format|
      if @further_info.update_attributes(params[:further_info])
        flash[:notice] = 'FurtherInfo was successfully updated.'
        format.html { redirect_to(@further_info) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @further_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /further_infos/1
  # DELETE /further_infos/1.xml
  def destroy
    @further_info = FurtherInfo.find(params[:id])
    @further_info.destroy

    respond_to do |format|
      format.html { redirect_to(further_infos_url) }
      format.xml  { head :ok }
    end
  end
end
