class DegreeCourse < ActiveRecord::Base
  belongs_to :cv
  validates_presence_of :degree_name
  belongs_to :school 
  #serialize :field, Array
  Field = ["Botany", "Computer_Science", "Marketing", "Finance et compta", "Medecine", "BTP", "Graphisme et Animation visuelle", "Architecture et Decoration"]
  end
