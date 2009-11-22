class EducationInformationsController < ApplicationController
  # GET /education_informations
  # GET /education_informations.xml
    def index
      @education_informations = EducationInformation.find(:all)
    end

  # GET /education_informations/1
  # GET /education_informations/1.xml
  def show
      @education_information = EducationInformation.find(params[:id])
      respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @education_informations }
    end
  end

  # GET /education_informations/new
  # GET /education_informations/new.xml
  def new
   @education_information = EducationInformation.new 
  end

  # GET /education_informations/1/edit
  def edit
    @education_information = EducationInformation.find(params[:id])
  end

  # POST /education_informations
  # POST /education_informations.xml
  def create
    @eduinfo = EducationInformation.new(params[:eduinfo]) 
    respond_to do |format|
      if @eduinfo.save
        flash[:notice] = 'Edu info was successfully created.' 
        redirect_to(@eduinfo) 
      else
         render :action => "new"
      end
    end
  end

  # PUT /education_informations/1
  # PUT /education_informations/1.xml
  def update
    @education_information = EducationInformation.find(params[:id])
    @education_information.profile_id =(params(:profile)) 
    respond_to do |format|
      if @education_information.update_attributes(params[:education_information])
        flash[:notice] = 'EducationInformation was successfully updated.'
        format.html { redirect_to @profile_url }
        format.xml  { render xml => @education_information, :status => :created, :location => profile }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @education_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /education_informations/1
  # DELETE /education_informations/1.xml
  def destroy
    @education_information = EducationInformation.find(params[:id])
    @education_information.destroy
    redirect_to :back
  end
end
