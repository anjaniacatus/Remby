class Profile < ActiveRecord::Base
  has_many :experiences
  has_many :education_informations
  accepts_nested_attributes_for :education_informations, :allow_destroy => true
  accepts_nested_attributes_for :experiences, :allow_destroy => true
  validates_presence_of :firstname, :lastname, :permalink, :age, :sex
end
