class School < ActiveRecord::Base
  has_many :degree_courses
  named_scope :ordered, :order => "name ASC"

end
