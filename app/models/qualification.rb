class Qualification < ActiveRecord::Base
   belongs_to :qualifiable, :polymorphic => true, :touch => true
   validates_presence_of :title, :description, :location, :duration

   def self.my_subclasses
    self.subclasses
  end

end
