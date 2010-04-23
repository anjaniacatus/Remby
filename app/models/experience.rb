class Experience < ActiveRecord::Base
  belongs_to :cv
  validates_presence_of :jobtitle, :duration
end
