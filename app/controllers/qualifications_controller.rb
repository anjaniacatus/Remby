class QualificationsController < ApplicationController
  # GET /qualifications
  # GET /qualifications.xml
  def index
  end

  # GET /qualifications/1
  # GET /qualifications/1.xml
  
  # GET /qualifications/new
  # GET /qualifications/new.xml
  def new
    @qualification = Qualification.new
    @qualifiable = CivilStatus.all
  end

  # GET /qualifications/1/edit
  def edit
    @qualification = Qualification.find(params[:id])
  end

  # POST /qualifications
  # POST /qualifications.xml
  def create
  end

  # DELETE /qualifications/1
  # DELETE /qualifications/1.xml
  def destroy
  end
end
