class Qualification < ActiveRecord::Base
  belongs_to :cv
  validates_presence_of :type
  Categories = ["","experience", "education_infos"]
end
