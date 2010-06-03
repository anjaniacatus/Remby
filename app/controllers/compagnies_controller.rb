class CompagniesController < ApplicationController
  # GET /compagnies
  # GET /compagnies.xml
  def index
    @compagnies = Compagny.all
    if current_user && current_user.roles == "compagny"
      @compagny = current_user.compagny
    end
    @compagnies = Compagny.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @civil_statuses }
    end
  end

  # GET /compagnies/1
  # GET /compagnies/1.xml
  def show
    @compagny = Compagny.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @compagny }
    end
  end

  # GET /compagnies/new
  # GET /compagnies/new.xml
  def new
    unless current_user.blank?
      @compagny = Compagny.new
      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @compagny }
      end
    else
       flash[:notice] = 'impossible, il faut être membre et à la fois connecté '
       redirect_to root_path
    end
  end

  # GET /compagnies/1/edit
  def edit
    @compagny = Compagny.find(params[:id])
  end

  # POST /compagnies
  # POST /compagnies.xml
  def create
    @compagny = Compagny.create!(params[:compagny])

    respond_to do |format|
      if @compagny.save
        @current_user.compagny = @compagny
        flash[:notice] = 'Compagny was successfully created.'
        format.html { redirect_to(@compagny) }
        format.xml  { render :xml => @compagny, :status => :created, :location => @compagny }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @compagny.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /compagnies/1
  # PUT /compagnies/1.xml
  def update
    @compagny = Compagny.find(params[:id])

    respond_to do |format|
      if @compagny.update_attributes(params[:compagny])
        flash[:notice] = 'Compagny was successfully updated.'
        format.html { redirect_to(@compagny) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @compagny.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /compagnies/1
  # DELETE /compagnies/1.xml
  def destroy
    @compagny = Compagny.find(params[:id])
    @compagny.destroy

    respond_to do |format|
      format.html { redirect_to(compagnies_url) }
      format.xml  { head :ok }
    end
  end
end
