class AppliesController < ApplicationController
  # GET /applies
  # GET /applies.xml
  def index
   @job = Job.find(params[:job_id])
    @applies = @job.applies
       respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @applies }
    end
  end

  # GET /applies/1
  # GET /applies/1.xml
  def show
    @job = Job.find(params[:job_id]) 
    @apply = @job.applies.find(params[:id])
     respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @apply }
     end
  end

  # GET /applies/new
  # GET /applies/new.xml
  def new
  unless (params[:job_id ] == nil)
    @job = Job.find(params[:job_id])
    unless current_user.civil_status.blank?
      @cvs = current_user.civil_status.cvs
        if @cvs.blank?
          flash[:notice] = "Vous devez avoir au minimum un Cv"
        else
           @apply = @job.applies.new(params[:apply])
        end
     else
        respond_to do |format|
         flash[:notice] = "Vous devez d'abord créer un profil pour votre compte ou connectez vous d'abord!"  
         format.html { redirect_to(jobs_path)}
        end
      end 
  end
end
  # GET /applies/1/edit
  def edit
    @apply = Apply.find(params[:id])
  end

  # POST /applies
  # POST /applies.xml
  def create
   @job = Job.find(params[:job_id])
   @apply = @job.applies.new(params[:apply])
   @s = @job.civil_statuses.size
   @job.civil_statuses[@s] = current_user.civil_status
   respond_to do |format|
      if @apply.save && @job.civil_statuses[@s].save
        flash[:notice] = 'job apply succesfull.'
        format.html { redirect_to job_apply_path(@job, @apply) }
        format.xml  { render :xml => @apply, :status => :created, :location => @apply }
      else
        format.html { redirect_to new_job_apply_path }
        flash[:notice] = 'Veuillez ajouter une description à votre candidature'
        format.xml  { render :xml => @apply.errors, :status => :unprocessable_entity }
      end
    end

  end

  # PUT /applies/1
  # PUT /applies/1.xml
  def update
    @apply = Apply.find(params[:id])

    respond_to do |format|
      if @apply.update_attributes(params[:apply])
        flash[:notice] = 'Apply was successfully updated.'
        format.html { redirect_to(@apply) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @apply.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /applies/1
  # DELETE /applies/1.xml
  def destroy
    @apply = Apply.find(params[:id])
    @apply.destroy

    respond_to do |format|
      format.html { redirect_to(applies_url) }
      format.xml  { head :ok }
    end
  end
end
