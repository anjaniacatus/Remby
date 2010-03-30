class CivilStatus < ActiveRecord::Base
  validates_presence_of :family_name, :name, :gender, :age, :current_city
  has_friendly_id :name, :use_slug => true, :strip_diacritics => true
  has_many :contact_infos, :as => :contactable, :dependent => :destroy
  accepts_nested_attributes_for :contact_infos, :allow_destroy => true, :reject_if => Proc.new { |attributes| attributes['value'].blank? }

  Genders = ["","femme", "homme"]
  Statuses = ["","marié(e)","celibataire"]
end
