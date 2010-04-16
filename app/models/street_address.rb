class StreetAddress < ContactInfo
  after_save :set_contactable_area

  private
  def set_contactable_area
    if self.contactable.respond_to?(:area)
      self.contactable.area = self.area
      self.contactable.save
    end
  end

end
