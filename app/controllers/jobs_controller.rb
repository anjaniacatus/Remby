class JobsController < ApplicationController
  # GET /jobs
  # GET /jobs.xml
  def index
    if params[:compagny_id]
      @compagny = Compagny.find(params[:compagny_id])
      @jobs = @compagny.jobs
    else
      @jobs = Job.find(:all)
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @jobs }
    end
  end

  # GET /jobs/1
  # GET /jobs/1.xml
  def show
    if params[:compagny_id] 
      @comapgny = Compagny.find(params[:compagny_id])
      @job = @comapgny.jobs.find(params[:id])
    else
      @job = Job.find(params[:id])
    end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job }
    end
  end

  # GET /jobs/new
  # GET /jobs/new.xml
  def new
    unless (params[:compagny_id ] == nil)
      @compagny = Compagny.find(params[:compagny_id])
      @job = @compagny.jobs.new(params[:job])
      @function = Function.new
      @localisation = Localisation.new
      @contract = Contract.new
    else
      flash[:notice] = "Connectez-Vous d'abord !!!"  
      respond_to do |format|
        format.html { redirect_to(compagnies_path)}
      end
    end 
    flash[:error] = t(:cannot_find_jobs, :default => "Misy diso")
    #end
  end

  # GET /jobs/1/edit
  def edit
    if params[:compagny_id]
      #@compagny = Compagny.find(params[:society_id])
      @job = @compagny.jobs.find(params[:id])
    else
      @job = Job.find(params[:id])
      flash[:error] = t(:cannot_find_jobs, :default => "Misy diso")
    end
  end

  # POST /jobs
  # POST /jobs.xml
  def create
    @compagny = Compagny.find(params[:compagny_id])
    @job = @compagny.jobs.new(params[:job])
    respond_to do |format|
      if @job.save
        flash[:notice] = 'job was successfully created.'
        format.html { redirect_to( compagny_job_path(@compagny, @job) ) }
        format.xml  { render :xml => @job, :status => :created, :location => @job }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @job.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /jobs/1
  # PUT /jobs/1.xml
  def update
    @job = Job.find(params[:id])

    respond_to do |format|
      if @job.update_attributes(params[:job])
        flash[:notice] = 'job was successfully updated.'
        format.html { redirect_to([@job.compagny,@job]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.xml
  def destroy
    @job = Job.find(params[:id])
    #@compagny = Compagny.find(params[:compagny_id])
    #@job = @compagny.job
    @job.destroy

    respond_to do |format|
      format.html { redirect_to(jobs_path) }
      format.xml  { head :ok }
    end
  end
end