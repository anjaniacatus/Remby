class EssaisController < ApplicationController
  # GET /essais
  # GET /essais.xml
  def index
    @essais = Essai.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @essais }
    end
  end

  # GET /essais/1
  # GET /essais/1.xml
  def show
    @essai = Essai.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @essai }
    end
  end

  # GET /essais/new
  # GET /essais/new.xml
  def new
    @essai = Essai.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @essai }
    end
  end

  # GET /essais/1/edit
  def edit
    @essai = Essai.find(params[:id])
  end

  # POST /essais
  # POST /essais.xml
  def create
    @essai = Essai.new(params[:essai])

    respond_to do |format|
      if @essai.save
        flash[:notice] = 'Essai was successfully created.'
        format.html { redirect_to(@essai) }
        format.xml  { render :xml => @essai, :status => :created, :location => @essai }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @essai.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /essais/1
  # PUT /essais/1.xml
  def update
    @essai = Essai.find(params[:id])

    respond_to do |format|
      if @essai.update_attributes(params[:essai])
        flash[:notice] = 'Essai was successfully updated.'
        format.html { redirect_to(@essai) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @essai.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /essais/1
  # DELETE /essais/1.xml
  def destroy
    @essai = Essai.find(params[:id])
    @essai.destroy

    respond_to do |format|
      format.html { redirect_to(essais_url) }
      format.xml  { head :ok }
    end
  end
end
