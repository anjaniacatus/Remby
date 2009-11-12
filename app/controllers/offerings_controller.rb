class OfferingsController < ApplicationController
  # GET /offerings
  # GET /offerings.xml
  def index
    if params[:firm_id]
      @firm = Firm.find(params[:firm_id])
      @offerings = @firm.offerings
    else
      flash[:error] = "Il y a erreur"
      redirect_to firms_path
    end
  end

  # GET /offerings/1
  # GET /offerings/1.xml
  def show
    if params[:firm_id]
      @firm = Firm.find(params[:firm_id])
      @offering = @firm.offerings.find(params[:id])
    else
      flash[:error] = "Il y a erreur"
      redirect_to firms_path
    end
  end

  # GET /offerings/new
  # GET /offerings/new.xml
  def new
    if params[:firm_id]
      @firm = Firm.find(params[:firm_id])
      @offering = @firm.offerings.new
    else
      flash[:error] = "Il y a erreur"
      redirect_to firms_path
    end
  end

  # GET /offerings/1/edit
  def edit
    @offering = Offering.find(params[:id])
  end

  # POST /offerings
  # POST /offerings.xml
  def create
    if params[:firm_id]
      @firm = Firm.find(params[:firm_id])
    end
    @offering = @firm.offerings.new(params[:offering])

    respond_to do |format|
      if @offering.save
        flash[:notice] = 'Offering was successfully created.'
        format.html { redirect_to(@offering) }
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
    @offering = Offering.find(params[:id])

    respond_to do |format|
      if @offering.update_attributes(params[:offering])
        flash[:notice] = 'Offering was successfully updated.'
        format.html { redirect_to(@offering) }
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
    @offering = Offering.find(params[:id])
    @offering.destroy

    respond_to do |format|
      format.html { redirect_to(offerings_url) }
      format.xml  { head :ok }
    end
  end
end
