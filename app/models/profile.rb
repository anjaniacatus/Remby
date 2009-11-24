class Profile < ActiveRecord::Base
  has_many :education_informations, :dependent => :destroy
  accepts_nested_attributes_for :education_informations, :allow_destroy => true
  has_many :experiences, :dependent => :destroy
  accepts_nested_attributes_for :experiences, :allow_destroy => true
  has_many :skills, :dependent => :destroy
  accepts_nested_attributes_for :skills, :allow_destroy => true
  has_many :other_infos, :dependent => :destroy
  accepts_nested_attributes_for :other_infos, :allow_destroy => true
  STATUS = [["single", "single"], ["married", "married"]].freeze
  SEX = [["male", "male"], ["female", "female"]].freeze
  AGE = [[15, 15], [16, 16]].freeze
  validates_presence_of :firstname, :lastname,  :age, :sex
  def inc_age
     
  end

end
