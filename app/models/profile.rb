class Profile < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :family_name, :name, :town, :sex, :birthday 
end
