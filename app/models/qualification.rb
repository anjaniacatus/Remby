class Qualification < ActiveRecord::Base
  belongs_to :cv
  #validates_presence_of :type
  Types = ["","Experience", "Education_infos"]
end
