class OtherSkillsController < ApplicationController
  # GET /other_skills
  # GET /other_skills.xml
  def index
    @other_skills = OtherSkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @other_skills }
    end
  end

  # GET /other_skills/1
  # GET /other_skills/1.xml
  def show
    @other_skill = OtherSkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @other_skill }
    end
  end

  # GET /other_skills/new
  # GET /other_skills/new.xml
  def new
    @other_skill = OtherSkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @other_skill }
    end
  end

  # GET /other_skills/1/edit
  def edit
    @other_skill = OtherSkill.find(params[:id])
  end

  # POST /other_skills
  # POST /other_skills.xml
  def create
    @other_skill = OtherSkill.new(params[:other_skill])

    respond_to do |format|
      if @other_skill.save
        flash[:notice] = 'OtherSkill was successfully created.'
        format.html { redirect_to(@other_skill) }
        format.xml  { render :xml => @other_skill, :status => :created, :location => @other_skill }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @other_skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /other_skills/1
  # PUT /other_skills/1.xml
  def update
    @other_skill = OtherSkill.find(params[:id])

    respond_to do |format|
      if @other_skill.update_attributes(params[:other_skill])
        flash[:notice] = 'OtherSkill was successfully updated.'
        format.html { redirect_to(@other_skill) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @other_skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /other_skills/1
  # DELETE /other_skills/1.xml
  def destroy
    @other_skill = OtherSkill.find(params[:id])
    @other_skill.destroy

    respond_to do |format|
      format.html { redirect_to(other_skills_url) }
      format.xml  { head :ok }
    end
  end
end
