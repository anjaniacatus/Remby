class User < ActiveRecord::Base
  acts_as_authentic
  has_one :profile
  has_many :qualifications
  has_many :skills
  has_many :contacts   
end
