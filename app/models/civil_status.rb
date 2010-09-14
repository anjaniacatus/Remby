class CivilStatus < ActiveRecord::Base
  validates_presence_of :family_name, :name, :gender, :birthday, :current_city
  has_many :contact_infos, :as => :contactable, :dependent => :destroy
  has_many :cvs, :dependent => :destroy
  belongs_to :user
  has_friendly_id :name, :use_slug => true, :strip_diacritics => true
  accepts_nested_attributes_for :contact_infos, :allow_destroy => true
  accepts_nested_attributes_for :cvs, :allow_destroy => true
  # acts_as_illustrated
  acts_as_fleximage do
    use_creation_date_based_directories true
    require_image false
    output_image_jpg_quality  85
    preprocess_image do |image|
      image.resize '200x200'
    end
  end

end
