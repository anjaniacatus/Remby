class CivilStatus < ActiveRecord::Base
  validates_presence_of :family_name, :name, :gender, :age, :current_city
  has_many :contact_infos, :as => :contactable, :dependent => :destroy
  has_friendly_id :name, :use_slug => true, :strip_diacritics => true
  Genders = ["","femme", "homme"]
  Statuses = ["","marié(e)","celibataire"]
  accepts_nested_attributes_for :contact_infos, :allow_destroy => true

end
