class Qualification < ActiveRecord::Base
  validates_presence_of :title, :description, :institute
  belongs_to :cv
  validates_presence_of :type
  Categories = ["","experience", "education_infos"]
end
