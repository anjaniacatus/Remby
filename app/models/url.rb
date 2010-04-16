class Url < ContactInfo
  Limit = 7
  validates_format_of :value, :with => /https?:\/\/.+/
  named_scope :tail, :limit => Limit, :order => "updated_at DESC"

end
