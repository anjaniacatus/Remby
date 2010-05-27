class Experience < ActiveRecord::Base
  belongs_to :cv
  has_one :compagny
  validates_presence_of :jobtitle 
  Durations = ["moins d'un ans","1 à 2 ans", "moins de 5ans", "5 ans et plus" ]
  has_friendly_id :jobtitle, :use_slug => true, :strip_diacritics => true

end
