class OtherInfosController < ApplicationController
  # GET /other_infos
  # GET /other_infos.xml
  def index
   if params[:profile_id] 
    @profile = Profile.find(params[:profile_id])
    @other_infos = profile.other_infos
  end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @other_infos }
    end
  end

  # GET /other_infos/1
  # GET /other_infos/1.xml
  def show
    @other_info = OtherInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @other_info }
    end
  end

  # GET /other_infos/new
  # GET /other_infos/new.xml
  def new
     if params[:profile_id] 
      @profile = Profile.find(params[:profile_id])
      @other_info = @profile.other_infos.new
     else 
             flash[:error] = t(:cannot_find_other_infos, :default => "Misy diso")
      redirect_to profiles_path

     end
  end

  # GET /other_infos/1/edit
  def edit
    @other_info = OtherInfo.find(params[:id])
  end

  # POST /other_infos
  # POST /other_infos.xml
  def create
    @profile = Profile.find(params[:profile_id])
    @other_info = @profile.other_infos.new(params[:other_info])

    respond_to do |format|
      if @other_info.save
        flash[:notice] = 'OtherInfo was successfully created.'
        format.html { redirect_to(@profile) }
        format.xml  { render :xml => @other_info, :status => :created, :location => @other_info }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @other_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /other_infos/1
  # PUT /other_infos/1.xml
  def update
    @other_info = OtherInfo.find(params[:id])

    respond_to do |format|
      if @other_info.update_attributes(params[:other_info])
        flash[:notice] = 'OtherInfo was successfully updated.'
        format.html { redirect_to(@profile) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @other_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /other_infos/1
  # DELETE /other_infos/1.xml
  def destroy
    @other_info = OtherInfo.find(params[:id])
    @other_info.destroy

    respond_to do |format|
      format.html { redirect_to(@profile) }
      format.xml  { head :ok }
    end
  end
end
