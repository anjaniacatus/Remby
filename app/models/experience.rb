class Experience < ActiveRecord::Base
  belongs_to :profile
  validate_presence_of :permalink, :office_name,:society_name, :period
end
