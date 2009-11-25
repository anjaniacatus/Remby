class OfferingsController < ApplicationController
  # GET /offerings
  # GET /offerings.xml
  def index
    if params[:society_id]
      @society = Society.find(params[:society_id])
      @offerings = @society.offerings
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @offerings }
    end
  end

  # GET /offerings/1
  # GET /offerings/1.xml
  def show
    @offering = Offering.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @offering }
    end
  end

  # GET /offerings/new
  # GET /offerings/new.xml
  def new
    if params[:society_id]
      @society = Society.find(params[:society_id])
      @offering = @society.offerings.new
    else
      flash[:error] = t(:cannot_find_offerings, :default => "Misy diso")
      redirect_to societies_path
    end
  end

  # GET /offerings/1/edit
  def edit
    if params[:society_id]
      @society = Society.find(params[:society_id])
      @offering = @society.offerings.find(params[:id])
    else
      flash[:error] = t(:cannot_find_offerings, :default => "Misy diso")
      redirect_to societies_path
    end
  end

  # POST /offerings
  # POST /offerings.xml
  def create
    @society = Society.find(params[:society_id])
    @offering = @society.offerings.new(params[:offering])

    respond_to do |format|
      if @offering.save
        flash[:notice] = 'offering was successfully created.'
        format.html { redirect_to(@society) }
        format.xml  { render :xml => @offering, :status => :created, :location => @offering }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @offering.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /offerings/1
  # PUT /offerings/1.xml
  def update
    @offering = offering.find(params[:id])

    respond_to do |format|
      if @offering.update_attributes(params[:offering])
        flash[:notice] = 'offering was successfully updated.'
        format.html { redirect_to(@society) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @offering.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /offerings/1
  # DELETE /offerings/1.xml
  def destroy
    @offering = Offering.find(params[:id], :include => :society)
    @society = @offering.society
    @offering.destroy

    respond_to do |format|
      format.html { redirect_to(@society) }
      format.xml  { head :ok }
    end
  end
end
