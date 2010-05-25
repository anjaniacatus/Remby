class DegreeCourse < ActiveRecord::Base
  belongs_to :cv
  validates_presence_of :degree_name
  belongs_to :school 
  Degree_Names = ["bac scientifique", "bac literaire","bac technique","formation", "bac + 1", "bac + 2", "license", "master M1", "master M2","DEA", "Phd" ]
  #serialize :field, Array
  Field = ["Botany", "Computer_Science", "Marketing", "Finance et compta", "Medecine", "BTP", "Graphisme et Animation visuelle", "Architecture et Decoration"]
  end
