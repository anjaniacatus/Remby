class DegreeCourse < ActiveRecord::Base
  belongs_to :cv
  validates_presence_of :degree_name
  belongs_to :school 
  belongs_to :field

  def my_field=(my)  
    if my and !my.blank?
      field_name = my.scan(/(\[([^\]]*)\])/)[0]
      self.field = Field.find_or_create_by_field_name(my.titleize)
    end
  end

  def my_field
    unless field.blank?
      "#{function.name}" unless new_record?
    end
  end

end
