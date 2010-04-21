class Cv < ActiveRecord::Base
  belongs_to :civil_status
  has_many :qualifications
  has_many :languages
  has_many :interests
  has_many :other_skills
  accepts_nested_attributes_for :qualifications, :allow_destroy => true
  accepts_nested_attributes_for :languages, :allow_destroy => true
  accepts_nested_attributes_for :interests, :allow_destroy => true
  accepts_nested_attributes_for :other_skills, :allow_destroy => true
  
  def self.search(search, page)
    paginate :per_page => 4, :page => page
  end

end
