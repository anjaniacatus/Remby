class Experience < ActiveRecord::Base
  belongs_to :cv
  belongs_to :compagny
  validates_presence_of :jobtitle 
  Durations = ["3 mois","6 mois", "1 ans" ]
  has_friendly_id :jobtitle, :use_slug => true, :strip_diacritics => true
  
  def my_compagny=(my) 
    if my and !my.blank?
      self.compagny = Compagny.find_or_create_by_name(my.titleize)
    end
  end

  def my_compagny
    unless compagny.blank?
      "#{compagny.name}" unless new_record?
    end
  end

end
