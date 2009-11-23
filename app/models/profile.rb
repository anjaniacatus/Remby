class Profile < ActiveRecord::Base
  has_many :education_informations
  accepts_nested_attributes_for :education_informations, :allow_destroy => true
  has_many :experiences
  accepts_nested_attributes_for :experiences, :allow_destroy => true
   has_many :skills
  accepts_nested_attributes_for :skills, :allow_destroy => true
  has_many :other_infos
  accepts_nested_attributes_for :other_infos, :allow_destroy => true
  
 

  validates_presence_of :firstname, :lastname, :permalink, :age, :sex
end
