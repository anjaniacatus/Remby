class ContactInfo < ActiveRecord::Base
  #translates :description
  has_many :emails
  has_many :phone_numbers
  has_many :urls
  belongs_to :contactable, :polymorphic => true, :touch => true
  accepts_nested_attributes_for :emails, :allow_destroy => true
  accepts_nested_attributes_for :phone_numbers, :allow_destroy => true
  accepts_nested_attributes_for :urls, :allow_destroy => true

end
