class Cv < ActiveRecord::Base
  has_many :qualifications
  accepts_nested_attributes_for :qualifications, :allow_destroy => true

end
