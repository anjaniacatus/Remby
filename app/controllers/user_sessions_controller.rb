class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      @user = @user_session.user
      flash[:notice] = "Bienvenue!" + @user.username
      unless @user.compagny.blank?
        @compagny = @user.compagny 
        redirect_to compagny_path( @compagny)
      else
        @civil_status = @user.civil_status
        redirect_to civil_status_path(@civil_status)
      end
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "Successfully logged out."
    redirect_to root_url 
  end
end
