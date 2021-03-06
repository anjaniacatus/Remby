class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Successfully logged in"
      @user = @user_session.user
      unless @user.roles == "admin"
       
        if @user.roles == "member"
          redirect_to new_civil_status_path
        end
        
        if @user.roles == "compagny"
         flash[:notice] = "Bienvenue! " + @user.username
         @compagny = @user.compagny 
         redirect_to compagnies_path
        end
        else
         redirect_to root_path
      end
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    redirect_to root_url 
    flash[:notice] = "Successfully logged out."
  end
end
