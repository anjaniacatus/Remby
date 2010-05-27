class ImagesController < ApplicationController
  caches_page :show, :if => Proc.new { |c| c.request.format.jpg? }

  # GET /images
  # GET /images.xml
  def index
    @images = Image.all.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @images }
    end
  end

  # get /images/1
  # get /images/1.xml
  def show
    @image = Image.find(params[:id])

    respond_to do |format|
      format.jpg
      format.html # show.html.erb
      format.xml  { render :xml => @image }
    end
  end

  def image
    @image = Image.find(params[:id])
    respond_to do |format|
      format.jpg
    end
  end

  # get /images/new
  # get /images/new.xml
  def new
    @image = Image.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image }
    end
  end

  # get /images/1/edit
  def edit
    @image = image.find(params[:id])
  end

  # post /images
  # post /images.xml
  def create
    @image = Image.new(params[:image])

    respond_to do |format|
      if @image.save
        flash[:notice] = 'image was successfully created.'
        format.html { redirect_to(@image) }
        format.xml  { render :xml => @image, :status => :created, :location => @image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # put /images/1
  # put /images/1.xml
  def update
    @image = image.find(params[:id])

    respond_to do |format|
      if @image.update_attributes(params[:image])
        flash[:notice] = 'image was successfully updated.'
        format.html { redirect_to(@image) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # delete /images/1
  # delete /images/1.xml
  def destroy
    @image = image.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to(images_url) }
      format.xml  { head :ok }
    end
  end
end
