class Qualification < ActiveRecord::Base
  validates_presence_of :title, :description, :location
  belongs_to :cv
  validates_presence_of :type
  Categories = ["","experience", "education_infos"]
end
