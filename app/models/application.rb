class Application < ActiveRecord::Base
  belongs_to :cv
  belongs_to :job
end
