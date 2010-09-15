class Apply < ActiveRecord::Base
  belongs_to :cv
  belongs_to :job
  named_scope :select, :conditions => {:job_id => 3}
  validates_presence_of :cv, :description
end
