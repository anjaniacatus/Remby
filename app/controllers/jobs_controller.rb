class JobsController < ApplicationController
  # GET /jobs
  # GET /jobs.xml
  def index
    if params[:society_id]
      @society = Society.find(params[:society_id])
      @jobs = @society.jobs
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @jobs }
    end
  end

  # GET /jobs/1
  # GET /jobs/1.xml
  def show
    if params[:society_id]
       @society = Society.find(params[:society_id])
       @job = @society.jobs.find(params[:id])
    end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job }
    end
  end

  # GET /jobs/new
  # GET /jobs/new.xml
  def new
    if params[:society_id]
      @society = Society.find(params[:society_id])
      @job = @society.jobs.new
    else
      flash[:error] = t(:cannot_find_jobs, :default => "Misy diso")
      redirect_to societies_path
    end
  end

  # GET /jobs/1/edit
  def edit
    if params[:society_id]
      @society = Society.find(params[:society_id])
      @job = @society.jobs.find(params[:id])
    else
      flash[:error] = t(:cannot_find_jobs, :default => "Misy diso")
      redirect_to jobs_path
    end
  end

  # POST /jobs
  # POST /jobs.xml
  def create
    @society = Society.find(params[:society_id])
    @job = @society.jobs.new(params[:job])

    respond_to do |format|
      if @job.save
        flash[:notice] = 'job was successfully created.'
        format.html { redirect_to(@society) }
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
        format.html { redirect_to(@society) }
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
    @job = Job.find(params[:id], :include => :society)
    @society = @job.society
    @job.destroy

    respond_to do |format|
      format.html { redirect_to(@society) }
      format.xml  { head :ok }
    end
  end
end