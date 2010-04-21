class Interest < ActiveRecord::Base
  belongs_to :cv
  validates_presence_of :title, :description
end
