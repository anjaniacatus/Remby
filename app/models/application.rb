class Application < ActiveRecord::Base
  belongs_to :cv
  belongs_to :job
  named_scope :select, :conditions => {:job_id => 3} 
end
