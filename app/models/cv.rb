class Cv < ActiveRecord::Base
  has_many :qualifications
  has_many :languages
  accepts_nested_attributes_for :qualifications, :allow_destroy => true
  accepts_nested_attributes_for :languages, :allow_destroy => true

end
