class PostalBox < ActiveRecord::Base
  belongs_to :contact_info
  validates_numericality_of :value
end
