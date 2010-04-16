class ContactInfosController < ApplicationController
  def new
    @contact_information = ContactInfo.new
    @contactable = CivilStatus.all 
  end

  def create
  end
  
  def destroy
  end
end
