class JobSheet < ActiveRecord::Base
  validates_presence_of :position, :mission, :competence, :fields
end
