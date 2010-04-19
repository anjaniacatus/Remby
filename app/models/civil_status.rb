class CivilStatus < ActiveRecord::Base
  validates_presence_of :family_name, :name, :gender, :age, :current_city
  acts_as_contactable
  acts_as_qualifiable
  has_friendly_id :name, :use_slug => true, :strip_diacritics => true
  Genders = ["","femme", "homme"]
  Statuses = ["","marié(e)","celibataire"]
end
