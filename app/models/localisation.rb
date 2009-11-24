class Localisation < ActiveRecord::Base
  has_friendly_id :name, :use_slug => true, :strip_diacritics => true
  has_many :jobs, :include => :society
end
