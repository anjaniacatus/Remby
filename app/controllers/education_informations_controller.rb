class EducationInformationsController < ApplicationController
  # GET /education_informations
  # GET /education_informations.xml
  def index
    @education_informations = EducationInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @education_informations }
    end
  end

  # GET /education_informations/1
  # GET /education_informations/1.xml
  def show
    @education_information = EducationInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @education_information }
    end
  end

  # GET /education_informations/new
  # GET /education_informations/new.xml
  def new
    @education_information = EducationInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @education_information }
    end
  end

  # GET /education_informations/1/edit
  def edit
    @education_information = EducationInformation.find(params[:id])
  end

  # POST /education_informations
  # POST /education_informations.xml
  def create
    @education_information = EducationInformation.new(params[:education_information])

    respond_to do |format|
      if @education_information.save
        flash[:notice] = 'EducationInformation was successfully created.'
        format.html { redirect_to(@education_information) }
        format.xml  { render :xml => @education_information, :status => :created, :location => @education_information }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @education_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /education_informations/1
  # PUT /education_informations/1.xml
  def update
    @education_information = EducationInformation.find(params[:id])

    respond_to do |format|
      if @education_information.update_attributes(params[:education_information])
        flash[:notice] = 'EducationInformation was successfully updated.'
        format.html { redirect_to(@education_information) }
        format.xml  { head :ok }
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

    respond_to do |format|
      format.html { redirect_to(education_informations_url) }
      format.xml  { head :ok }
    end
  end
end
