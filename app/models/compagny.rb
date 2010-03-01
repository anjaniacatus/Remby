class Compagny < ActiveRecord::Base
  validates_presence_of :name, :registration_number, :headquaters   
  has_many :job_sheets
end
