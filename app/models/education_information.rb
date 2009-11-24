class EducationInformation < ActiveRecord::Base
  #belongs_to :domain
  #belongs_to :school
  belongs_to :profile
  validates_presence_of  :speciality, :graduation
end
