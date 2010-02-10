class JobSheetsController < ApplicationController
  # GET /job_sheets
  # GET /job_sheets.xml
  def index
    @job_sheets = JobSheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @job_sheets }
    end
  end

  # GET /job_sheets/1
  # GET /job_sheets/1.xml
  def show
    @job_sheet = JobSheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job_sheet }
    end
  end

  # GET /job_sheets/new
  # GET /job_sheets/new.xml
  def new
    @job_sheet = JobSheet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job_sheet }
    end
  end

  # GET /job_sheets/1/edit
  def edit
    @job_sheet = JobSheet.find(params[:id])
  end

  # POST /job_sheets
  # POST /job_sheets.xml
  def create
    @job_sheet = JobSheet.new(params[:job_sheet])

    respond_to do |format|
      if @job_sheet.save
        flash[:notice] = 'JobSheet was successfully created.'
        format.html { redirect_to(@job_sheet) }
        format.xml  { render :xml => @job_sheet, :status => :created, :location => @job_sheet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @job_sheet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /job_sheets/1
  # PUT /job_sheets/1.xml
  def update
    @job_sheet = JobSheet.find(params[:id])

    respond_to do |format|
      if @job_sheet.update_attributes(params[:job_sheet])
        flash[:notice] = 'JobSheet was successfully updated.'
        format.html { redirect_to(@job_sheet) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job_sheet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /job_sheets/1
  # DELETE /job_sheets/1.xml
  def destroy
    @job_sheet = JobSheet.find(params[:id])
    @job_sheet.destroy

    respond_to do |format|
      format.html { redirect_to(job_sheets_url) }
      format.xml  { head :ok }
    end
  end
end
