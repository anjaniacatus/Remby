class DegreeCourse < ActiveRecord::Base
  belongs_to :cv
 # validates_presence_of :degree_name
  belongs_to :school 
  belongs_to :field

  def my_field=(my)  
    if my and !my.blank?
      #field_name = my.scan(/(\[([^\]]*)\])/)[0]
      self.field = Field.find_or_create_by_field_name(my.titleize)
    end
  end

  def my_field
    unless field.blank?
      "#{field.field_name}" unless new_record?
    end
  end
  
  
  def my_school=(my)  
    if my and !my.blank?
      #school_name = my.scan(/(\[([^\]]*)\])/)[0]
      self.school = School.find_or_create_by_name(my.titleize)
    end
  end

  def my_school
    unless school.blank?
      "#{school.name}" unless new_record?
    end
  end

   def my_option=(my)  
    if my and !my.blank?
      self.field.option = (my)
    end
  end

  def my_option
    unless field.blank?
      "#{field.option}" unless new_record?
    end
  end

  

end
