class DegreeCourse < ActiveRecord::Base
  belongs_to :cv
  validates_presence_of :degree_name
  belongs_to :school 
  #serialize :field, Array
  belongs_to :field
  def field_name
    field.name if field
  end
  def field_name=(name)
    self.field = Field.find_by_name unless name.blank?
  end

  Field = ["Botany", "Computer_Science", "Marketing", "Finance et compta", "Medecine", "BTP", "Graphisme et Animation visuelle", "Architecture et Decoration"]
  end
