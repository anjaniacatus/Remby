class ContactInfosController < ApplicationController
  # GET /contact_infos
  # GET /contact_infos.xml
  def index
    @contact_infos = ContactInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contact_infos }
    end
  end

  # GET /contact_infos/1
  # GET /contact_infos/1.xml
  def show
    @contact_info = ContactInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact_info }
    end
  end

  # GET /contact_infos/new
  # GET /contact_infos/new.xml
  def new
    @contact_info = ContactInfo.new
    @contactable = CivilStatus.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contact_info }
    end
  end

  # GET /contact_infos/1/edit
  def edit
    @contact_info = ContactInfo.find(params[:id])
  end

  # POST /contact_infos
  # POST /contact_infos.xml
  def create
    @contact_info = ContactInfo.new(params[:contact_info])

    respond_to do |format|
      if @contact_info.save
        flash[:notice] = 'ContactInfo was successfully created.'
        format.html { redirect_to(@contact_info) }
        format.xml  { render :xml => @contact_info, :status => :created, :location => @contact_info }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contact_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contact_infos/1
  # PUT /contact_infos/1.xml
  def update
    @contact_info = ContactInfo.find(params[:id])

    respond_to do |format|
      if @contact_info.update_attributes(params[:contact_info])
        flash[:notice] = 'ContactInfo was successfully updated.'
        format.html { redirect_to(@contact_info) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contact_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_infos/1
  # DELETE /contact_infos/1.xml
  def destroy
    @contact_info = ContactInfo.find(params[:id])
    @contact_info.destroy

    respond_to do |format|
      format.html { redirect_to(contact_infos_url) }
      format.xml  { head :ok }
    end
  end
end
