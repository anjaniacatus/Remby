class DegreeCoursesController < ApplicationController


  # GET /degree_courses
  # GET /degree_courses.xml
  def index
    @degree_courses = DegreeCourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @degree_courses }
    end
  end

  # GET /degree_courses/1
  # GET /degree_courses/1.xml
  def show
    @degree_course = DegreeCourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @degree_course }
    end
  end

  # GET /degree_courses/new
  # GET /degree_courses/new.xml
  def new
    @degree_course = DegreeCourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @degree_course }
    end
  end

  # GET /degree_courses/1/edit
  def edit
    @degree_course = DegreeCourse.find(params[:id])
  end

  # POST /degree_courses
  # POST /degree_courses.xml
  def create
    @degree_course = DegreeCourse.new(params[:degree_course])

    respond_to do |format|
      if @degree_course.save
        flash[:notice] = 'DegreeCourse was successfully created.'
        format.html { redirect_to(@degree_course) }
        format.xml  { render :xml => @degree_course, :status => :created, :location => @degree_course }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @degree_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /degree_courses/1
  # PUT /degree_courses/1.xml
  def update
    @degree_course = DegreeCourse.find(params[:id])

    respond_to do |format|
      if @degree_course.update_attributes(params[:degree_course])
        flash[:notice] = 'DegreeCourse was successfully updated.'
        format.html { redirect_to(@degree_course) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @degree_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /degree_courses/1
  # DELETE /degree_courses/1.xml
  def destroy
    @degree_course = DegreeCourse.find(params[:id])
    @degree_course.destroy

    respond_to do |format|
      format.html { redirect_to(degree_courses_url) }
      format.xml  { head :ok }
    end
  end
end
