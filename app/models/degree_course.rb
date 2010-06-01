class DegreeCourse < ActiveRecord::Base
  belongs_to :cv
  validates_presence_of :degree_name
  belongs_to :school 
  belongs_to :field
end
