class Post < ActiveRecord::Base
  has_many :comments
  accepts_nested_attributes_for :comments
  has_friendly_id :title, :use_slug => true, :strip_diacritics => true 

end
