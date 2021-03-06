class NotesController < ApplicationController
  # GET /notes
  # GET /notes.xml

  def index
    if params[:society_id]
      @society = Society.find(params[:society_id])
      @notes = @society.notes
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @notes }
    end
  end

  # GET /notes/1
  # GET /notes/1.xml
  def show
    @note = Note.find(params[:id])
       
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @note }
    end
  end

  # GET /notes/new
  # GET /notes/new.xml
  def new
    if params[:society_id]
      @society = Society.find(params[:society_id])
      @note = @society.notes.new
    else
      flash[:error] = t(:cannot_find_notes, :default => "Misy diso")
      redirect_to societies_path
    end
  end

  # GET /notes/1/edit
  def edit
    if params[:society_id]
      @society = Society.find(params[:society_id])
      @note = @society.notes.find(params[:id])
    else
      flash[:error] = t(:cannot_find_notes, :default => "Misy diso")
      redirect_to notes_path
    end
  end

  # POST /notes
  # POST /notes.xml
  def create
    @society = Society.find(params[:society_id])
    @note = @society.notes.new(params[:note])

    respond_to do |format|
      if @note.save
        flash[:notice] = 'Note was successfully created.'
        format.html { redirect_to(@society) }
        format.xml  { render :xml => @note, :status => :created, :location => @note }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /notes/1
  # PUT /notes/1.xml
  def update
    @note = Note.find(params[:id])

    respond_to do |format|
      if @note.update_attributes(params[:note])
        flash[:notice] = 'Note was successfully updated.'
        format.html { redirect_to(@society) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.xml
  def destroy
    @note = Note.find(params[:id], :include => :society)
    @society = @note.society
    @note.destroy

    respond_to do |format|
      format.html { redirect_to(@society) }
      format.xml  { head :ok }
    end
  end
end
