class Language < ActiveRecord::Base
  belongs_to :cv
  validates_presence_of :title, :location, :level
end

