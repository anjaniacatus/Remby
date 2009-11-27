class ExperiencesController < ApplicationController
  # GET /experiences
  # GET /experiences.xml
  def index
   if params[:profile_id]
    @profile = Profile.find(params[profile_id])
    @experiences = @profile.experiences
   end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @experiences }
    end
  end

  # GET /experiences/1
  # GET /experiences/1.xml
  def show
    @experience = Experience.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @experience }
    end
  end

  # GET /experiences/new
  # GET /experiences/new.xml
  def new
   if params[:profile_id]
    @profile = Profile.find(params[:profile_id])
    @experience = @profile.experiences.new
   else
      flash[:error] = 
      redirect_to profiles_path
   end
  end

  # GET /experiences/1/edit
  def edit
     if params[:profile_id]
      @profile = Profile.find(params[:profile_id])
      @experience = @profile.experiences.find(params[:id])
     else
       redirect_to experiences_path    
     end  
end

  # POST /experiences
  # POST /experiences.xml
  def create
    @profile = Profile.find(params[:profile_id])
    @experience = @profile.experiences.new(params[:experience])

    respond_to do |format|
      if @experience.save
        flash[:notice] = 'Experience was successfully created.'
        format.html { redirect_to(@profile) }
        format.xml  { render :xml => @experience, :status => :created, :location => @experience }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @experience.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /experiences/1
  # PUT /experiences/1.xml
  def update
    @experience = Experience.find(params[:id])

    respond_to do |format|
      if @experience.update_attributes(params[:experience])
        flash[:notice] = 'Experience was successfully updated.'
        format.html { redirect_to(@experience) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @experience.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /experiences/1
  # DELETE /experiences/1.xml
  def destroy
    @experience = Experience.find(params[:id], include => :profile)
    @experience = @experience.profile
    @experience.destroy

    respond_to do |format|
      format.html { redirect_to(experiences_url) }
      format.xml  { head :ok }
    end
  end
end
