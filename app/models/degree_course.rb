class DegreeCourse < ActiveRecord::Base
  belongs_to :cv
  validates_presence_of :degree_name
  
  Degree_Names = ["bac","formation", "bac + 1", "bac + 2", "license", "master M1", "master M2", "doctorat"]
end
