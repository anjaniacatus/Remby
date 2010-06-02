class Field < ActiveRecord::Base
  has_many :degree_courses 
  named_scope :ordered, :order => "field_name ASC"
end
