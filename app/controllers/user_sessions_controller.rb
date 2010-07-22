class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      @user = @user_session.user
      flash[:notice] = "Bienvenue!" + @user.username
      unless @user.roles == "admin"
        if @user.roles == "member"
        redirect_to civil_statuses_path
        end
        if @user.roles == "compagny"
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
