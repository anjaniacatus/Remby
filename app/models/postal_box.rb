class PostalBox < ContactInfo
  validates_numericality_of :value
end
