class LanguagesController < ApplicationController
  # GET /languages
  # GET /languages.xml
  def index
     if params[:profile_id]
        @profile = Profile.find(params[:profile_id])
        @languages = @profile.languages
   end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @languages }
    end
  end

  # GET /languages/1
  # GET /languages/1.xml
  def show
    @language = Language.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @language }
    end
  end

  # GET /languages/new
  # GET /languages/new.xml
  def new
    if params[:profile_id]
        @profile = Profile.find(params[:profile_id])
        @language = @profile.languages.new
   else 
      flash[:error] = t(:cannot_find_, language, :default => "Misy diso")
      redirect_to profiles_path
   end

     end

  # GET /languages/1/edit
  def edit
 if params[:profile_id]
        @profile = Profile.find(params[:profile_id])
        @language = Language.find(params[:id])
 else
  flash[:error] = t(:cannot_find_notes, :default => "Misy diso")
      redirect_to languages_path
 
 end
 end

  # POST /languages
  # POST /languages.xml
  def create
     @profile = Profile.find(params[:profile_id]) 
   @language = @profile.languages.new(params[:education_information]) 
    respond_to do |format|
      if @language.save
        flash[:notice] = 'Skill was successfully created.'
        format.html { redirect_to(@profile) }
        format.xml  { render :xml => @language, :status => :created, :location => @language }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @language.errors, :status => :unprocessable_entity }
      end
    end

  end

  # PUT /languages/1
  # PUT /languages/1.xml
  def update
    @language = Language.find(params[:id])

    respond_to do |format|
      if @language.update_attributes(params[:language])
        flash[:notice] = 'Language was successfully updated.'
        format.html { redirect_to(@language) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @language.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /languages/1
  # DELETE /languages/1.xml
  def destroy
  @language= Language.find(params[:id], :include => :profile)
    @profile = @language.profile
    @language.destroy

    respond_to do |format|
      format.html { redirect_to(@profile) }
      format.xml  { head :ok }
    end
  end
end
