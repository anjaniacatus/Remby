class Cv < ActiveRecord::Base
  has_many :qualifications
  has_many :languages
  has_many :interests
  has_many :other_skills
  accepts_nested_attributes_for :qualifications, :allow_destroy => true
  accepts_nested_attributes_for :languages, :allow_destroy => true
  accepts_nested_attributes_for :interests, :allow_destroy => true
  accepts_nested_attributes_for :other_skills, :allow_destroy => true

end
