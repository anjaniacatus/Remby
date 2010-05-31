class Compagny < ActiveRecord::Base
  validates_presence_of :name, :registration_number, :headquarters   
  has_friendly_id :name, :use_slug => true, :strip_diacritics => true
  has_many :job_sheets
end
