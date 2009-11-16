class Offering < ActiveRecord::Base
  belongs_to :firm
  has_many :activities, :dependent => :delete_all
  accepts_nested_attributes_for :activities, :allow_destroy => :true
  has_many :contracts, :dependent => :delete_all
  accepts_nested_attributes_for :contracts, :allow_destroy => :true
  has_many :functions, :dependent => :delete_all
  accepts_nested_attributes_for :functions, :allow_destroy => :true
  has_many :localisations, :dependent => :delete_all
  accepts_nested_attributes_for :localisations, :allow_destroy => :true
end