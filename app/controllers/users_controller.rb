class UsersController < ApplicationController
  def index
    @users = User.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end
 
  def new
    @user = User.new
  end
  
  def show
  
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Thanks for signing up!!."
      redirect_to root_url 
    else
      render :action => 'new'
    end
  end
  
  def edit
    @userp  = User.find(params[:id])
    @user = current_user
  end

  def update
    @userp  = User.find(params[:id])
    @user = current_user
    if @userp.update_attributes(params[:user])
      flash[:notice] = "Successfully updated account."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end
end
