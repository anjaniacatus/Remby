class Profile < ActiveRecord::Base
  has_many :experiences 
  validates_presence_of :firstname, :lastname, :permalink, :age, :sex
end
