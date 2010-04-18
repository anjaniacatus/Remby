class ContactInfo < ActiveRecord::Base
  translates :description
  belongs_to :contactable, :polymorphic => true, :touch => true
  validates_presence_of :value

  def self.my_subclasses
    self.subclasses
  end
end
