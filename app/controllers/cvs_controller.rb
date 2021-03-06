class CvsController < ApplicationController
  before_filter :nested_in => :civil_statuses
#  auto_complete_for :experience, :compagny_id
  #auto_complete_for :experience, :jobtitle
  #auto_complete_for :experience, :job_id
  #auto_complete_for :experience, :duration
  #auto_complete_for :language, :level

  # GET /cvs
  # GET /cvs.xml
  def index
    if params[:q]
      @search = nil
      query = params[:q]
      @search = Cv.search do
        keywords query
      end
      @cvs = @search.results.paginate :per_page => 2, :page => params[:page]

        
    end
    unless params[:civil_status_id].blank?  
      @civil_status = CivilStatus.find(params[:civil_status_id])
      @cvs = @civil_status.cvs
      @cv_all = Cv.all
      @cvs.paginate :per_page => 1, :page => params[:page]

    else
      @cvs = Cv.all
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
   if params[:civil_status_id] 
      @civil_status = CivilStatus.find(params[:civil_status_id])
      @cv = @civil_status.cvs.find(params[:id])
      @degrees  = @cv.degree_courses(:all)
    else
       @cv = Cv.find(params[:id])
       @degrees  = @cv.degree_courses(:all)
    end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cv }
      format.pdf { render :layout => false }
    end
  end

  # GET /cvs/new
  # GET /cvs/new.xml
 
  # GET /cvs/1/edit
  def edit
    @cv = Cv.find(params[:id])
  end

  # POST /cvs
  # POST /cvs.xml
   def create
     @civil_status = CivilStatus.find(params[:civil_status_id])
     @cv = @civil_status.cvs.new(params[:cv])
     respond_to do |format|
       if @cv.save
         flash[:notice] = 'Cv was successfully created.'
         format.html { redirect_to civil_status_cv_path(@civil_status, @cv)  }
         format.xml  { render :xml => @cv, :status => :created, :location => @cv }
       else
         format.html { redirect_to civil_statuses_url }
         format.xml  { render :xml => @cv.errors, :status => :unprocessable_entity }
       end
     end
  end

  # PUT /cvs/1
  # PUT /cvs/1.xml
  def new
    unless (params[:civil_status_id ] == nil)
      @civil_status = CivilStatus.find(params[:civil_status_id])
      @cv = @civil_status.cvs.new(params[:cv])
    else
      respond_to do |format|
         flash[:notice] = "Vous devez d'abord créer un profil pour votre compte ou connectez vous d'abord!"  

        format.html { redirect_to(cvs_path)}
      end
    end
  end

   def update
    @cv = Cv.find(params[:id])

    respond_to do |format|
      if @cv.update_attributes(params[:cv])
        flash[:notice] = 'Cv was successfully updated.'
        format.html { redirect_to([@cv.civil_status, @cv]) }
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
  protected
    
end
