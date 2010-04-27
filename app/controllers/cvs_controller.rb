class CvsController < ApplicationController
  # GET /cvs
  # GET /cvs.xml
  def index
    if params[:civil_status_id] 
      @civil_status = CivilStatus.find(params[:civil_status_id])
      @cvs = @civil_status.cvs
    else
      @cvs = Cv.find(:all)
    #@cv_paginates = Cv.search(params[:search], params[:page])
    end
     respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cvs }
    end   
  end

  # GET /cvs/1
  # GET /cvs/1.xml
  def show
    @cv = Cv.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cv }
    end
  end

  # GET /cvs/new
  # GET /cvs/new.xml
  def new
    @civil_status = CivilStatus.find(params[:civil_status_id])
    @cv = @civil_status.cvs.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @civil_status }
    end
  end

  # GET /cvs/1/edit
  def edit
    @cv = Cv.find(params[:id])
  end

  # POST /cvs
  # POST /cvs.xml
  def create
    @civil_status = CivilStatus.find(params[:civil_status_id])
    @cv = @civil_status.cvs.create!(params[:cv])

    respond_to do |format|
      if @cv.save
        flash[:notice] = 'Cv was successfully created.'
        format.html { redirect_to @civil_status }
        format.xml  { render :xml => @cv, :status => :created, :location => @cv }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cv.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cvs/1
  # PUT /cvs/1.xml
  def update
    @cv = Cv.find(params[:id])

    respond_to do |format|
      if @cv.update_attributes(params[:cv])
        flash[:notice] = 'Cv was successfully updated.'
        format.html { redirect_to(@cv) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cv.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cvs/1
  # DELETE /cvs/1.xml
  def destroy
    @cv = Cv.find(params[:id])
    @cv.destroy

    respond_to do |format|
      format.html { redirect_to(cvs_url) }
      format.xml  { head :ok }
    end
  end
end
