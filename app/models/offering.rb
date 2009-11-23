class Offering < ActiveRecord::Base
  has_friendly_id :ref, :use_slug => true, :strip_diacritics => true
  belongs_to :society
  has_attachment :storage => :file_system
  validates_as_attachment
end
