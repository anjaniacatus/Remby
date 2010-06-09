class Cv < ActiveRecord::Base
  belongs_to :civil_status
  has_many :degree_courses
  has_many :experiences
  has_many :languages
  has_many :interests
  has_many :other_skills
  belongs_to :field
  has_many :applications
  has_many :jobs, :through => :applications
  named_scope :ordered, :order => "title ASC"
  accepts_nested_attributes_for :degree_courses, :allow_destroy => true
  accepts_nested_attributes_for :experiences, :allow_destroy => true
  accepts_nested_attributes_for :languages, :allow_destroy => true
  accepts_nested_attributes_for :interests, :allow_destroy => true
  accepts_nested_attributes_for :other_skills, :allow_destroy => true

  has_friendly_id :title, :use_slug => true, :strip_diacritics => true



end
