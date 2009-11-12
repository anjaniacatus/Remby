class Profile < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :family_name, :name, :town, :sex, :birthday
  has_many :qualifications
  has_many :skills
  has_many :contacts 
end
