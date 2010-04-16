class Email < ContactInfo
  validates_format_of :value, :with => /.+@.+\..+/
end
