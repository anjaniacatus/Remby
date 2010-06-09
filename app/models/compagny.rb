class Compagny < ActiveRecord::Base
  validates_presence_of :name, :headquarters   
  has_friendly_id :name, :use_slug => true, :strip_diacritics => true
  has_many :job_sheets
  has_many :jobs
  belongs_to :user
  named_scope :ordered, :order => "name ASC"
  named_scope :valide, :conditions => {:validated => true}
  has_many :experiences
end
