class Experience < ActiveRecord::Base
  belongs_to :profile
  validates_presence_of :office_name,:society_name, :period
end
