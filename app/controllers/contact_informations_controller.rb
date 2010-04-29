class ContactInformationsController < ApplicationController
  def new
    @contact_information = ContactInformation.new
    @contactable = Profile.all + Society.all

  end
  
  def create
  end
  
  def destroy
  end
end
