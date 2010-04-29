class Contract < ActiveRecord::Base
  has_friendly_id :name, :use_slug => true, :strip_diacritics => true
  has_many :jobs, :include => :society
  named_scope :ordered, :order => "name ASC"
end
