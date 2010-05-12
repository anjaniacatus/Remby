class CivilStatusesController < ApplicationController
  # GET /civil_statuses
  # GET /civil_statuses.xml
  before_filter :new_civil_status
  def index
    @civil_statuses = CivilStatus.all
    @cv_all = Cv.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @civil_statuses }
    end
  end

  # GET /civil_statuses/1
  # GET /civil_statuses/1.xml
  def show
    @civil_status = CivilStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @civil_status }
    end
  end

  # GET /civil_statuses/new
  # GET /civil_statuses/new.xml
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @civil_status }
    end
  end

  # GET /civil_statuses/1/edit
  def edit
  end

  # POST /civil_statuses
  # POST /civil_statuses.xml
  def create

    respond_to do |format|
      if @civil_status.save
        flash[:notice] = 'CivilStatus was successfully created.'
        format.html { redirect_to(@civil_status) }
        format.xml  { render :xml => @civil_status, :status => :created, :location => @civil_status }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @civil_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /civil_statuses/1
  # PUT /civil_statuses/1.xml
  def update

    respond_to do |format|
      if @civil_status.update_attributes(params[:civil_status])
        flash[:notice] = 'CivilStatus was successfully updated.'
        format.html { redirect_to(@civil_status) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @civil_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /civil_statuses/1
  # DELETE /civil_statuses/1.xml
  def destroy

    respond_to do |format|
      format.html { redirect_to(civil_statuses_url) }
      format.xml  { head :ok }
    end
  end
  
  def breadcrumbs
    self.class.breadcrumbs(@civil_status)
  end
  
  def self.breadcrumbs (civil_status)
    [["Civil_Statuses", CivilStatus.new]] +
      (civil_status && !civil_status.new_record? ? 
        [[civil_status.name, civil_status]] : [])
  end
  protected
  def new_civil_status
    @civil_status = CivilStatus.new(params[:civil_status])
  end

end
