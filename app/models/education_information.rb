class EducationInformation < ActiveRecord::Base
  belongs_to :domain
  belongs_to :school
end
