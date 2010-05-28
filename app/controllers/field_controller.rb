class FieldController < ApplicationController
  def index
   @fields = Field.find(:all, :conditions => ['name Like ?', "%#{params ;[:search]}%"]) 
  end


end
