class ApplicationsController < ApplicationController
  # GET /applications
  # GET /applications.xml
  def index
    @job = Job.find(params[:job_id])
    @applications = @job.applications
       respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @applications }
    end
  end

  # GET /applications/1
  # GET /applications/1.xml
  def show
    @job = Job.find(params[:job_id]) 
    @application = @job.applications.find(params[:id])
     respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @application }
     end
  end

  # GET /applications/new
  # GET /applications/new.xml
 def new
    unless (params[:job_id ] == nil)
      @job = Job.find(params[:job_id])
      @application = @job.applications.new(params[:application])
      unless current_user.civil_status.blank?
        @cvs = current_user.civil_status.cvs
        if @cvs.blank?
          flash[:notice] = "Mbola tsi manana cv ooo"
        end
      else
        @cvs = Cv.all
        flash[:notice] = "Mbola tsy manana cv enao!! ndana mamorona"
      end

    else
        respond_to do |format|
         flash[:notice] = "Vous devez d'abord créer un profil pour votre compte ou connectez vous d'abord!"  

        format.html { redirect_to(jobs_path)}
      end
    end
  end


  # GET /applications/1/edit
  def edit
    @application = Application.find(params[:id])
  end

  # POST /applications
  # POST /applications.xml
  def create
    @job = Job.find(params[:job_id])
    @application = @job.applications.new(params[:application])

    respond_to do |format|
      if @application.save
        flash[:notice] = 'job apply succesfull.'
        format.html { redirect_to job_application_path(@job, @application) }
        format.xml  { render :xml => @application, :status => :created, :location => @application }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @application.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /applications/1
  # PUT /applications/1.xml
  def update
    @application = Application.find(params[:id])

    respond_to do |format|
      if @application.update_attributes(params[:application])
        flash[:notice] = 'Application was successfully updated.'
        format.html { redirect_to(@application) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @application.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /applications/1
  # DELETE /applications/1.xml
  def destroy
    @application = Application.find(params[:id])
    @application.destroy

    respond_to do |format|
      format.html { redirect_to(applications_url) }
      format.xml  { head :ok }
    end
  end
end
