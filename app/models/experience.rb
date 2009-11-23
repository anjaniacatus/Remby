class Experience < ActiveRecord::Base
  belongs_to :profile
  validates_presence_of :permalink, :office_name,:society_name, :period
end
