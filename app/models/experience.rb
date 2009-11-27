class Experience < ActiveRecord::Base
  has_friendly_id :office_name, :use_slug => true, :strip_diacritics => true

  belongs_to :profile
  validates_presence_of :office_name,:society_name, :period
end
