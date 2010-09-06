class Cv < ActiveRecord::Base
  #acts_as_fleximage
  belongs_to :civil_status
  belongs_to :field
  has_many :degree_courses, :dependent => :destroy
  has_many :experiences, :dependent => :destroy
  has_many :experiences, :dependent => :destroy
  has_many :languages,  :dependent => :destroy
  has_many :interests,  :dependent => :destroy
  has_many :other_skills,  :dependent => :destroy
  has_many :applications,  :dependent => :destroy
  has_many :jobs, :through => :applications
  named_scope :ordered, :order => "title ASC"
  accepts_nested_attributes_for :degree_courses, :allow_destroy => true
  accepts_nested_attributes_for :experiences, :allow_destroy => true
  accepts_nested_attributes_for :languages, :allow_destroy => true
  accepts_nested_attributes_for :interests, :allow_destroy => true
  accepts_nested_attributes_for :other_skills, :allow_destroy => true

  has_friendly_id :title, :use_slug => true, :strip_diacritics => true

end
