class Localisation < ActiveRecord::Base
  has_and_belongs_to_many :offerings
  has_friendly_id :name, :use_slug => true, :strip_diacritics => true
end
