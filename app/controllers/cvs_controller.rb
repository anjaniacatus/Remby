class CvsController < ApplicationController

  auto_complete_for :cv, :title
  auto_complete_for :degree_course, :degree_name
  auto_complete_for :degree_course, :field
  auto_complete_for :experience, :compagny_id
  auto_complete_for :experience, :jobtitle
  auto_complete_for :experience, :job_id
  auto_complete_for :experience, :duration
  auto_complete_for :language, :title
  auto_complete_for :language, :level
  auto_complete_for :other_skill, :title

  # GET /cvs
  # GET /cvs.xml
  def index
    @cvs = Cv.all

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
    @cv = Cv.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cv }
    end
  end

  # GET /cvs/1/edit
  def edit
    @cv = Cv.find(params[:id])
  end

  # POST /cvs
  # POST /cvs.xml
  def create
    @cv = Cv.new(params[:cv])

    respond_to do |format|
      if @cv.save
        flash[:notice] = 'Cv was successfully created.'
        format.html { redirect_to(@cv) }
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
