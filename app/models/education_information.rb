class EducationInformation < ActiveRecord::Base
   has_friendly_id :speciality, :use_slug => true, :strip_diacritics => true
  belongs_to :profile
  validates_presence_of  :speciality, :graduation
end
