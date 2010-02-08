class Compagny < ActiveRecord::Base
  validates_presence_of :name, :registration_number, :headquaters   
end
