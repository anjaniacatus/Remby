class ContactInfo < ActiveRecord::Base
  #translates :description
  has_many :emails
  belongs_to :contactable, :polymorphic => true, :touch => true
  validates_presence_of :value
  accepts_nested_attributes_for :emails, :allow_destroy => true

  def self.my_subclasses
    self.subclasses
  end
end
