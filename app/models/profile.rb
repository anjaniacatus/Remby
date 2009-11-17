class Profile < ActiveRecord::Base
  has_many :experiences
  has_many :education_informations
  validates_presence_of :firstname, :lastname, :permalink, :age, :sex
end
